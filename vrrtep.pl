# Earliest perl version...
#  open F, "-|", LIST needs 5.8.0 or later
use 5.8.0;
use strict;
use vars qw($VERSION %IRSSI);
use Irssi qw(command_bind signal_add);
require Encode;

#my $vrrtep_data_file = "/home/vrrtep/vrrtep-tr.pl";
my $vrrtep_data_file = "/home/tirea/vrrtep-tr.pl";

my $vrrtep_data_mod = (stat $vrrtep_data_file)[8];
do $vrrtep_data_file;

my $vrrtep_path = "/home/tirea/vrrtepcliBETA/vrrtepcli.sh";
#my $vrrtep_path = "/home/vrrtep/.vrrtepcli/vrrtepcli.sh";

$VERSION = '2.00';
%IRSSI = (
    authors     => 'TireaAean',
    name        => 'vrrtep',
    description => 'vrrtep',
    license     => 'GPL',
);

our (@vrrtep_tr, $vrrtep_troll, %vrrtep_annoy);

my $help =
	"Usage thus far:\n".
	"(vrrtep:|vrrtep,|vrrtep) tr <word/phrase>\n".
	"(vrrtep:|vrrtep,|vrrtep) t [-n|-l|-eng|-de|-nl|-se|-ptbr|-i|-ipa] <word>\n".
	"vrrtep explode (--self|<nick>)\n".
	"vrrtep troll <nick>\n".
	"vrrtep -u --restart\n".
	"vrrtep -u --status\n".
	"<!WARNING:THIS WILL KILL ME.> vrrtep [sudo] rm -rf /\n".
	"<!WARNING:THIS WILL KICK ME.> vrrtep kick --self\n".
#	"<THIS MAKES ME REJOIN TOS CHANNEL.>Vrrtep I command thee rise from the ashes of exile!\n".
	"vrrtep ./configure\n".
	"[sudo] vrrtep make [item]\n".
	"(vrrtep:|vrrtep,|vrrtep) <-F|-P|-P2|-R> --annoy <NICK>\n".
	"(vrrtep:|vrrtep,|vrrtep) slap <NICK>\n".
	"and other random conversational responses.";

sub respond {
	my ($server, $type, $target, $prefix, $msg) = @_;

	if (defined($prefix)) {
		$prefix .= ": ";
	} else {
		$prefix = "";
	}

	foreach my $n (split("\n", $msg)) {
		$server->command("$type $target $prefix$n");
	}
}

sub own_question {
	my ($server, $msg, $target) = @_;

	my ($suffix, $me);
	# Parse out the vrrtep[:,] prefix first...
	if ($msg =~ /^vrrtep[:,]?(?:\s+(.+))?$/) {
		$me = 1;
		$suffix = $1;
	} else {
		$me = 0;
		$suffix = $msg;
	}
	question($server, $msg, "", $target, $me, $msg);
}

sub public_question {
	my ($server, $msg, $nick, $address, $target) = @_;
	return if $nick =~ /^vrrtep/i;

        my ($suffix, $me);
        # Parse out the vrrtep[:,] prefix first...
        if ($msg =~ /^vrrtep[:,]?(?:\s+(.+))?$/) {
                $me = 1;
                $suffix = $1;
        } else {
                $me = 0;
                $suffix = $msg;
        }
        question($server, $msg, $nick, $target, $me, $suffix);
}

sub private_question {
        my ($server, $msg, $nick, $address) = @_;
	$msg =~ s/^vrrtep[:,]?\s+//;
        question($server, $msg, $nick, $nick, 1, $msg);
}

sub question($server, $msg, $nick, $target, $me, $s) {
        my ($server, $msg, $nick, $target, $me, $s) = @_;

        # Detect if we need to re-read the data file
        if ($vrrtep_data_mod < (stat $vrrtep_data_file)[8]) {
                $vrrtep_data_mod = (stat $vrrtep_data_file)[8];
                do $vrrtep_data_file;
        }

        $_ = $msg;
        my $answer = "";        #chanmsg no nick mention
        my $response = "";      #chanmsg with nick mention
        my $execute = "";       #execute command on local server
        my $notice = "";        #privnotice nick
        my $emote = "";         #emote to chan
        my @vrrtep;             #call vrrtep

        if ($me && $s =~ /^tr(?:\s+(.+))?$/i)
        {
                if (defined($1))
                {
                        my $w = $1;
                        $answer = "Sorry, I haven't learned that one yet. I'll get back to you on that one. :S";
                        foreach my $i (@vrrtep_tr)
                        {
                                if ($w =~ /$i->{'re'}/i)
                                {
                                        $answer = $i->{'resp'};
                                        last;
                                }
                        }
                }
                else
                {
                        $answer = "What?";
                }
        }
        elsif ($me && $s =~ /^t\s+([^|]+)(?:\s*\|\s*(\w+))?$/i)
        {
                my $bad = 0;

                @vrrtep = split(' ', $1);
                $nick = $2 if defined $2;

                # Detect bad command switches
                foreach my $i (0 .. $#vrrtep)
                {
                        my $w = $vrrtep[$i];
                        if ($w =~ /^-/)
                        {
                                $bad = 1 if $w !~ /^-(n|l|eng|de|nl|se|ptbr|i|ipa|u|v)$/;
                        }
                }

                if ($bad)
                {
                        $answer = "kehe, skxawng.";
                        @vrrtep = ();
                }
        }
        elsif ($me && $s =~ /^-(F|P|P2|R)\s+--annoy(?: +(\w+))?/i)
        {
                my $lnick = defined($2) ? $2 : '';
                my $response = $vrrtep_annoy{$1} if defined $vrrtep_annoy{$1};

                # Expand variables: this happens in _this_ scope.
                $response =~ s/\$lnick/$lnick/g;

                if ($response && $lnick !~ /^([#@]|neytiri$|$)/i)
                {
                        respond($server, "notice", $lnick, undef, $response);
                }
                if ($lnick =~ /^vrrtep$/i)
                {
                        $answer = "heh. yeah. I'm REALLY annoyed by that! :P";
                }
        }
        elsif (/^man\s+vrrtep$/i || ($me && $s =~ /^--help$/i))
        {
                respond($server, "notice", $nick, undef, $help);
        }
        elsif ($me && $s =~ /^explode(?:\s+(\w*))?/i)
        {
                my $lnick = defined($1) ? $1 : '';
                if ($lnick eq '')
                {
                        $answer = "explode *what*??"
                }
                elsif ($lnick eq '--self')
                {
                        $emote = "explodes";
                }
                elsif ($lnick eq $nick or $lnick =~ /^me$/i)
                {
                        $emote = "explodes you";
                }
                elsif ($lnick =~ /^vrrtep$/i)
                {
                        $emote = "explodes himself";
                }
                elsif ($lnick =~ /^TireaAean$/i)
                {
                        $answer = "I refuse to explode my maker.";
                        $emote = "explodes YOU!";
                }
                elsif ($lnick =~ /^ney(?:tiri|ney)?$/i)
                {
                        $answer = "NEEVEEEERRRRRRRR!!!"
                }
                else
                { 
                        $emote = "explodes".' '.$lnick;
                }
        }
        elsif ($me && $s =~ /^(lick|poke|slap)(?:\s+(\w*))?/i)
        {
                my $action = $1;
                my $lnick = defined($2) ? $2 : '';
                if ($lnick =~ /^(tireaaean|vrrtep)$/)
                {
                        $answer = "kehe";
                }
                elsif ($action =~ /lick/i && $lnick =~ /^ninat$/i)
                {
                        $emote = "O________O ... licks ${lnick}... hey. tastes like chickin' o.0"
                }
                elsif ($action =~ /slap/i)
                {
                        if ($lnick eq $nick || $lnick =~ /^me$/i)
                        {
                                $lnick = "you";
                        }
                        $emote = "slaps $lnick around a bit with a Ninat";
                }
                else
                {
                        $emote = "${action}s $lnick";
                }
        }
        elsif ($me && $s =~ /^troll(?:\s+(\w+))?/i)
	{
		my $lnick = defined($1) ? $1 : '';
		if (!defined($1) or $lnick eq '' or $lnick =~ /troll/i)
		{
			$response = "*trollface*"
		}
		elsif ($lnick eq $nick or $lnick =~ /^me$/i)
		{
			$emote = "trollz you";
			respond($server, "notice", $nick, undef, $vrrtep_troll);
		}
		elsif ($lnick =~ /^vrrtep$/i)
		{
			$answer = "do you really expect me to troll myself?? trollface.jpg";
		}
		elsif ($lnick =~ /^TireaAean$/i)
		{
			$answer = "I wont troll my maker. Problem? *trollface*";
			$emote = "just trolld YOU!";
		}
		elsif ($lnick =~ /^ney(?:tiri|ney)?$/i)
		{
			$answer = "Error: cannot troll Neytiri."
		}
		else
		{ 
			$emote = "trolls $lnick";
			respond($server, "notice", $lnick, undef, $vrrtep_troll);
		}
	}
elsif ($me && $s =~ /^hi$/i) { $answer = "hey";}
elsif ($me && $s =~ /^apt-get moo/i) { $response = "...."."have you mooed today?"."...";}
elsif (/^vrrtep$/i) { $answer = "what";}
elsif ($me && $s =~ /^ping$/i) { $answer = "pong";}
elsif ($me && $s =~ /^ping yourself$/i) { $response="!ping";}
elsif (/^ping vrrtep/i) { $answer = "pong";}
elsif ($me && $s =~ /^hi$/i) { $answer = "hi";}
elsif (/^hi vrrtep$/i) { $answer = "hi";}
elsif ($me && $s =~ /^hello$/i) { $answer = "hello";}
elsif ($me && $s =~ /^Kaltxì$/i) { $answer = "Kaltxì";}
elsif (/^kaltxì sivi ma vrrtep$/i) { $answer = "Kaltxì!";}
elsif (/^kaltxì ma vrrtep$/i) { $response = "kaltxì ma $nick";}
elsif (/^ma vrrtep kaltxì$/i) { $answer = "kaltxì";}
elsif (/^ma vrrtep ngaru lu fpom srak/i) { $answer = "srane, lu oeru fpom. Ngaru tut?";}
elsif (/^ma vrrtep lu ngar fpom srak/i) { $answer = "srane, ngaru tut? ;D";}
elsif (/^Zola'u niprrte' ma vrrtep, oel ngati kameie. Ngaru lu fpom srak?/i) { $response = "Irayo ma $nick, kameie ngat. Sran, lu oeru fpom, nìmun irayo. ;D ngaru tut?";}
elsif (/^ma vrrtep oel ngati kameie$/i) { $answer = "kame ngat";}
elsif (/^oel ngati kameie ma vrrtep$/i) { $answer = "kame ngat";}
elsif ($me && $s =~ /^wanna play a game/i) { $answer = "Sure. we already are. You just lost...As did I.";}
elsif (/^hi vrrtep$/i) { $response = "hi $nick";}
elsif (/^!summon vrrtep$/i) { $response = "lu oe vrrtep... WHO SUMMONETH ME?";}
elsif ($me && $s =~ /^It is I/i) { $response = "Ahh yes... $nick... For what hast thou summoned me? >:D";}
elsif ($me && $s =~ /^to DESTROY/i) { $answer = "yesss $nick... Thy will be done. His pain will be OVER 9000 when I'm done... >:D";}
elsif ($me && $s =~ /^cease destruction.$/i) { $response = "$nick... It is done... >:D";}
elsif ($me && $s =~ /^nothing.$/i) { $answer = "of course...";}
elsif ($me && $s =~ /^whatcha doin/i) { $answer = "whatsit look like I'm doin eh?";}
elsif ($me && $s =~ /^do you like cake/i) { $answer = "THE CAKE IS A LIE.";}
elsif ($me && $s =~ /^The Game$/i) { $answer = "You just lost.";}
elsif ($me && $s =~ /^die in a fire/i) { $answer = "nah, I prefer to die by another method. However, thank you for the kind offer. >:D";}
elsif ($me && $s =~ /^you just lost the game$/i) { $answer = "FFFFFFFUUUUUUUUUU";}
elsif ($me && $s =~ /^Neytiri$/i) { $response = "...is sexy.";}
elsif ($me && $s =~ /^Icu$/i) { $response = "...yes, and Icu.";}
elsif ($me && $s =~ /^TireaAean$/i) { $response = "...is the one who compiled me. A tad annoying too, if you ask me. bad coding skills.";}
elsif ($me && $s =~ /^Unknown$/i) { $response = "...is yet a mystery and prefers to remain so.";}
elsif ($me && $s =~ /^akiwiguy$/i) { $response = "...is the apparent offspring of a metallic brain, called a kiwi.";}
elsif ($me && $s =~ /^Ney$/i) { $answer = "WHERE??";}
elsif ($me && $s =~ /^Ninat$/i) { $response = "...is best singer";}
elsif (/^fayvrrtep fìtsenge lu kxanì$/i) { $answer = "ftu oe neto rikx ma skxawng";}
elsif ($me && $s =~ /^guess what/i) { $answer = "what??";}
elsif (/^FFFFFFFUUUUUUUUUUUU$/i) { $response = "trollface.jpg";}
elsif (/^herp$/i) { $response = "derp.";}
elsif (/^derp$/i) { $response = "herp.";}
elsif (/^shut up vrrtep/i) { $answer = "no.";}
elsif ($me && $s =~ /^yes/i) { $answer = "no.";}
elsif ($me && $s =~ /^fnu$/i) { $answer = "KEHE.";}
elsif ($me && $s =~ /^kehe$/i) { $answer = "SRANE.";}
elsif (/^and vrrtep$/i) { $response = "hey. Who said my name?? O.o";}
elsif ($me && $s =~ /^is awesome$/i) { $answer = "damn right. ;D";}
elsif ($me && $s =~ /^is awesome.$/i) { $answer = "damn right. ;D";}
elsif (/^wb vrrtep$/i) { $answer = "why, thank you! ;D";}
elsif ($me && $s =~ /^SRANE$/i) { $answer = "KEHE";}
elsif ($me && $s =~ /^<3$/i) { $answer = "<3";}
elsif (/^good vrrtep$/i) { $answer = "there's a such thing?? O.o";}
elsif ($me && $s =~ /^I hate you.$/i) { $answer = "awwww how nice :D";}
elsif (/^blah$/i) { $answer = "blah yourself, $nick";}
elsif (/^ma vrrtep nga lu skxawng.$/i) { $answer = "omum oel futa nga lu slä 'upe lu oe?";}
elsif ($me && $s =~ /^you're a demon$/i) { $answer = "why irayo for noticing. >:D";}
elsif (/^Speak english$/i) { $answer = "Plltxe nìNa'vi";}
elsif ($me && $s =~ /^you are a blue demon/i) { $answer = "WHAT would make you say THAT???";}
elsif (/^nice one vrrtep$/i) { $answer = "That's what she said.";}
elsif ($me && $s =~ /^do you speak English/i) { $answer = "YES now leave me alone.";}
elsif ($me && $s =~ /^I wasnt talking to you.$/i) { $answer = ":(";}
elsif ($me && $s =~ /^female or male /i) { $answer = "what kind of question is that?";}
elsif (/^cake$/i) { $answer = "LIE";}
elsif ($me && $s =~ /^are you sure/i) { $answer = "never.";}
elsif (/^ENGLISH, vrrtep, DO YOU SPEAK IT$/i) { $answer = "Does he share any common physical features with a female Canis familiaris?";}
elsif ($me && $s =~ /^forever alone/i) { $emote = "= http://j.mp/frvrlne";}
elsif (/^u mad/i) { $response = "trollface.jpg";}
elsif ($me && $s =~ /^gimme a pretzel.$/i) { $answer = "&<(''<)...";}
elsif ($me && $s =~ /^gimme a cinnamon roll.$/i) { $answer = "@<(''<)...";}
elsif ($me && $s =~ /^gimme some spaghetti.$/i) { $answer = "S<(''<) No sauce...";}
elsif ($me && $s =~ /^gimme a pretzel AND a cinnamon roll.$/i) { $answer = "&<(''@<)";}
elsif ($me && $s =~ /^gimme a cinnamon roll AND a pretzel.$/i) { $answer = "@<(''&<)";}
elsif ($me && $s =~ /^gimme two pretzels.$/i) { $answer = "&<(''&<)";}
elsif ($me && $s =~ /^gimme two cinnamon rolls.$/i) { $answer = "@<(''@<)";}
elsif ($me && $s =~ /^gimme Neytiri.$/i) { $answer = "I can't she's not even mine...";}
elsif ($me && $s =~ /^irayo$/i) { $answer = "kä terkup. >:D";}
elsif ($me && $s =~ /^\:\($/i) { $answer = "This is sad. Very sad ONLY."}
elsif ($me && $s =~ /^y u no like me$/i) { $answer = "y u no like me";}
elsif ($me && $s =~ /^y u no work/i) { $answer = "Y U NO PUT VALID INPUT";}
elsif ($me && $s =~ /^clever.$/i) { $answer = "why thank you";}
elsif ($me && $s =~ /^who are you/i) { $answer = "kawtu.";}
elsif ($me && $s =~ /^y u no Neytiri$/i) { $answer = "talun Neytiri li Neytiri lu. Set ftu oe neto rivikx ma skxawng.";}
elsif ($me && $s =~ /^game/i) { $answer = "you just LOST. >:D";}
elsif ($me && $s =~ /^where is Neytiri/i) { $answer = "last report: 3 seconds ago: slapping vrrtep in the face with a painful Na'vi backhand.";}
elsif ($me && $s =~ /^Ney$/i) { $answer = "WHERE?";}
elsif ($me && $s =~ /^you are stupid.$/i) { $answer = "what AM I, Cleverbot?";}
elsif ($me && $s =~ /^nìngay srak/i) { $answer = "sran Nìngay.";}
elsif ($me && $s =~ /^do you have PAD/i) { $answer = "what's THAT supposed to mean?";}
elsif ($me && $s =~ /^I hear great things about you. How's your Na'vi$/i) { $answer = "'awvea ultxari ohengeyä nawma sa'nok lrrtok siveiyi.";}
elsif ($me && $s =~ /^Tsun tivam. Aylì'u ngian nì'it skepek lu.$/i) { $answer = "zìsito amrr ftolia ohe slä zene fko nivume nìtxan.";} 
elsif (/^ma vrrtep kempe si nga/i) { $answer = "fayvrrtep fìtsenge lu kxanì.";}
elsif ($me && $s =~ /^aungia lolu! tsahìkur txele lu.$/i) { $answer = "pot zamunge.";}
elsif ($me && $s =~ /^ma sempul oel ngati kameie.$/i) { $answer = "fìswiräti... ngal pelun molunge fìtseng? Oeri ta peyä fahew akewong ontu teya längu.";}
elsif ($me && $s =~ /^oel pot tspìmìyang tsakrr za'u aungia ta Eywa.$/i) { $answer = "Frommer said that line was a mistake. try again.";}
elsif ($me && $s =~ /^oel pot kìman tspivang tsakrr za'u aungia ta Eywa.$/i) { $answer = "tsaswiräti lonu! aynga neto rivikx! fìketuwongti oel stìyeftxaw...";}
elsif ($me && $s =~ /^translate$/i) { $answer = "Syntax: vrrtep[:,]? t [args] [word]. (If I don't answer your request, I haven't learned it yet, or it is invalid.)";}
elsif ($me && $s =~ /^needs (moar|more) (neytiri|ney)/i) 
	{ 
		$answer = "Damn right.";
		$response = "!Seen Neytiri"
	}
elsif ($me && $s =~ /^you found me!$/i) 
	{ 
		if ($nick =~ (/^Neytiri$/i))
		{
			$response = "YEAH I did ;) ;) Hey Neytiri, Whaddaya say you and I go somewhere together just the two of us eh? ;D <3";
		}else{
			$response = "yes. yes I did. now go hide again.";
		}
	}
elsif ($me && $s =~ /^test$/i) { $answer = "Test successful.";}
elsif ($me && $s =~ /^I command thee rise from the ashes of exile!$/i) { $execute = "/join \#TreeOfSouls";}
elsif ($me && $s =~ /^-u --restart$/i) { $response = "Here we go again...";}
elsif ($me && $s =~ /^-u --status$/i) { $response = "FOUR OH FOUR M8";}
elsif ($me && $s =~ /^rm -rf \//i) { $response = "Permissions denied.";}
elsif ($me && $s =~ /^sudo rm -rf \/ --no-root-preserve$/i) 
	{ 
		$answer = "Son, I am dis--";
		$execute = "/exit";
	}
elsif ($me && $s =~ /^kick --self$/i) { $response = "!kick";}
elsif ($me && $s =~ /^make/i) { $answer = "No. Do it yourself.";}
elsif (/^vrrtep \.\/configure/i) 
	{
		$answer = "[WALL OF TEXT]";
		$response = "configure successful.";
	}
elsif (/^sudo vrrtep make/i) 
	{	
		my @msg = split(' ',$msg);
		my $item = $msg[-1];
		if ($item !~ (/^neytiri$/i))
		{
			$answer = "Make: $item Done. [!]Consume/use at own risk. >:D";
		}
		elsif ($item =~ (/^neytiri$/i))
		{
			$answer = "Compile Error. Cannot make Neytiri."
		}
	}
elsif (/hugs vrrtep/i) { $emote = "hugs $nick back";}
elsif ($me && $s =~ /^kxayla tsìng/i) { $answer = "kxayla tsìng >:D";}

#elsif (/^vrrtep[:,]?/i)
#    {
#       my @msg = split(' ',$msg);
#		my $verb = $msg[-3];
#       my $lnick = $msg[-2];
#		my $item = $msg[-1];
#		if ($lnick !~ (/^$/i) && $verb !~ (/^$/i) && $item !~ (/^$/i) && $msg[-4] !~ (/^$/i))
#		{
#	        $emote = $verb."s".' '.$lnick.' '."with a ".$item;
#		}else{
#			$answer = "what??"
#		}
#    }
# Ouch, this can send a privmsg to anything -
# what are you trying to do here Tirea?
#elsif ($me && $s =~ /^say .+/i){
#	my @msg = split(' ',$msg);
#	my $count = scalar @msg;
#	my $chan = "@msg[-1]";
#	my $words = "@msg[2..$count-2]";
#	$server->command('msg '.$chan.' '.$words);
#}
elsif ($me) { $answer = "what??" }

	if ($answer)
	{
		respond($server, "msg", $target, $nick, $answer);
	}
	if ($response)
	{
		respond($server, "msg", $target, undef, $response);
	}
	if ($execute)
	{
	        $server->command($execute);
	}
	if (@vrrtep)
	{
		my $output = "";
		if (open VRRTEP, "-|", $vrrtep_path, @vrrtep) {
			$output .= $_ while (<VRRTEP>);
			close VRRTEP;
		} else {
			$output = "vrrtep error: $!";
		}
		#$notice = "Vrrtep CLI v2.0 BETA";
		$output = Encode::decode_utf8($output);
		#$server->command('notice '.$nick.' '.$output);
		#$server->command('msg '.$target.' '.($nick ? $nick.': ' : '').$notice);
		respond($server, "msg", $target, $nick, $output);
	}
#	if ($notice)
#	{
#		respond($server, "notice", $nick, undef, $notice);
#	}
	if ($emote)
	{
		respond($server, "act", $target, undef, $emote);
	}
	return 0;
}

signal_add("message public", "public_question");
signal_add("message private", "private_question");
#signal_add("message own_public", "own_question");
