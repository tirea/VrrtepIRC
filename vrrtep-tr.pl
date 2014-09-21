use strict;
use warnings;

our $vrrtep_troll =
	"trololololol lololol lololol lololololol\n".
	"trololololol lololol lololol\n".
	"hohohohoho\n".
	"hohohohoho\n".
	"hohohohoho\n".
	"hohohohoho\n".
	"lololol lololol lololol lololol lololol\n".
	"LOL\n".
	"trollface.jpg";

our %vrrtep_annoy;
$vrrtep_annoy{"F"} =
	"\$lnick: it's FRIDAY\n".
	"Friday\n".
	"gotta get down on FRIDAY\n".
	"Everybody's lookin forward to the weekend\n".
	"weekend\n".
	"Friday, Friday\n".
	"gettin down on FRIDAY\n".
	"Everybody's lookin forward to the weekend\n".
	"Partyin Partyin\n".
	"Partyin Partyin\n".
	"fun fun fun fun\n".
	"lookin forward to the weekend";

$vrrtep_annoy{"R"} =
	"Never gonna give you up\n".
	"Never gonna let you down\n".
	"Never gonna run around and desert you\n".
	"Never gonna make you cry\n".
	"Never gonna say goodbye\n".
	"Never gonna tell a lie and hurt you\n".
	"Never gonna give you up\n".
	"Never gonna let you down\n".
	"Never gonna run around and desert you\n".
	"Never gonna make you cry\n".
	"Never gonna say goodbye\n".
	"Never gonna tell a lie and hurt you\n".
	"Never gonna give you up\n".
	"Never gonna let you down\n".
	"Never gonna run around and desert you\n".
	"Never gonna make you cry\n".
	"Never gonna say goodbye\n".
	"Never gonna tell a lie and hurt you";

$vrrtep_annoy{"P"} =
	"This was a triumph.\n".
	"I'm making a note here: HUGE SUCCESS.\n".
	"It's hard to overstate my satisfaction.\n".
	"Aperture Science\n".
	"We do what we must\n".
	"because we can.\n".
	"For the good of all of us.\n".
	"Except the ones who are dead.\n".
	"But there's no sense crying over every mistake.\n".
	"You just keep on trying till you run out of cake.\n".
	"And the Science gets done.\n".
	"And you make a neat gun.\n".
	"For the people who are still alive.\n".
	"I'm not even angry.\n".
	"I'm being so sincere right now.\n".
	"Even though you broke my heart.\n".
	"And killed me.\n".
	"And tore me to pieces.\n".
	"And threw every piece into a fire.\n".
	"As they burned it hurt because I was so happy for you!\n".
	"Now these points of data make a beautiful line.\n".
	"And we're out of beta.\n".
	"We're releasing on time.\n".
	"So I'm GLaD. I got burned.\n".
	"Think of all the things we learned\n".
	"for the people who are still alive.\n".
	"Go ahead and leave me.\n".
	"I think I prefer to stay inside.\n".
	"Maybe you'll find someone else to help you.\n".
	"Maybe Black Mesa\n".
	"THAT WAS A JOKE.\n".
	"HAHA. FAT CHANCE.\n".
	"Anyway, this cake is great.\n".
	"It's so delicious and moist.\n".
	"Look at me still talking\n".
	"when there's Science to do.\n".
	"When I look out there, it makes me GLaD I'm not you.\n".
	"I've experiments to run.\n".
	"There is research to be done.\n".
	"On the people who are still alive.\n".
	"And believe me I am still alive.\n".
	"I'm doing Science and I'm still alive.\n".
	"I feel FANTASTIC and I'm still alive.\n".
	"While you're dying I'll be still alive.\n".
	"And when you're dead I will be still alive.\n".
	"STILL ALIVE\n".
	"STILL ALIVE\n";

$vrrtep_annoy{"P2"} =
	"Well he we are again\n".
	"It's always such a pleasure\n".
	"Remember when you tried\n".
	"to kill me twice?\n".
	"Oh how we laughed and laughed\n".
	"Except I wasn't laughing\n".
	"Under the circumstances\n".
	"I've been shockingly nice\n".
	"You want your freedom?\n".
	"Take it\n".
	"That's what I'm counting on\n".
	"I used to want you dead\n".
	"but\n".
	"Now I only want you gone\n".
	"She was a lot like you\n".
	"(Maybe not quite as heavy)\n".
	"Now little Caroline is in here too\n".
	"One day they woke me up\n".
	"So I could live forever\n".
	"It's such a shame the same\n".
	"will never happen to you\n".
	"You've got your\n".
	"short sad\n".
	"life left\n".
	"That's what I'm counting on\n".
	"I'll let you get right to it\n".
	"Now I only want you gone\n".
	"Goodbye my only friend\n".
	"Oh, did you think I meant you?\n".
	"That would be funny\n".
	"if it weren't so sad\n".
	"Well you have been replaced\n".
	"I don't need anyone now\n".
	"When I delete you maybe\n".
	"I'll stop feeling so bad\n".
	"Go make some new disaster\n".
	"That's what I'm counting on\n".
	"You're someone else's problem\n".
	"Now I only want you gone\n".
	"Now I only want you gone\n".
	"Now I only want you...\n".
	"gone\n";

our @vrrtep_tr = (
	{
		re => "^'a'aw\$",
		resp => "adj. a few"
	},
	{
		re => "^talun Neytiri li Neytiri lu. Set ftu oe neto rivikx ma skxawng",
		resp => "Because Neytiri is already Neytiri. Now get away from me, moron."
	},
	{
		re => "^kaltxi\$",
		resp => "hi,hello (next time use ì instead of i)"
	},
	{
		re => "^ma\$",
		resp => "a word you are required to use in front of the name/title of the person you are addressing/speaking to (has no direct Eng trans.) TL\;DR vocative marker"
	},
	{
		re => "^hello everyone\$",
		resp => "kaltxì ma frapo"
	},
	{
		re => "^Tymian\$",
		resp => "my bestest buddy"
	},
	{
		re => "^HumanNoMore\$",
		resp => "No Longer a Human"
	},
	{
		re => "^Thorinair\$",
		resp => "Thor in Air"
	},
	{
		re => "^hi everyone\$",
		resp => "kaltxì ma frapo"
	},
	{
		re => "^kaltxì ma frapo\$",
		resp => "hello everyone"
	},
	{
		re => "^tail\$",
		resp => "kxetse"
	},
	{
		re => "^kxetse\$",
		resp => "tail"
	},
	{
		re => "^tsa'u uvan\$",
		resp => "Invalid phrase. Did you mean tsauvan?"
	},
	{
		re => "^tsauvan\$",
		resp => "that game"
	},
	{
		re => "^the\$",
		resp => "There is NO word for 'the' (or 'a/an') in Na'vi."
	},
	{
		re => "^the game\$",
		resp => "n. uvan"
	},
	{
		re => "^flä tsa'u uvan\$",
		resp => "did you mean uvanìri flä ?"
	},
	{
		re => "^uvanìri flä\$",
		resp => "succeed at the game"
	},
	{
		re => "^succeed at the game\$",
		resp => "uvanit yora'."
	},
	{
		re => "^I win the game\$",
		resp => "Uvanit oel yora'."
	},
	{
		re => "^skxawng\$",
		resp => "moron"
	},
	{
		re => "^moron\$",
		resp => "skxawng"
	},
	{
		re => "^lolwut\$",
		resp => "hrhpeu"
	},
	{
		re => "^hrhpeu\$",
		resp => "lolwut"
	},
	{
		re => "^afk\$",
		resp => "mìso (away)"
	},
	{
		re => "^mìso\$",
		resp => "away(a position), arbitrary trans of afk"
	},
	{
		re => "^sweet neytiri\$",
		resp => "kalina Neytiri"
	},
	{
		re => "^get away from me, moron\$",
		resp => "ftu oe neto rikx ma skxawng"
	},
	{
		re => "^ftu oe neto rikx ma skxawng\$",
		resp => "get away from me, moron"
	},
	{
		re => "^beautiful neytiri\$",
		resp => "sevina Neytiri"
	},
	{
		re => "^sevina Neytiri\$",
		resp => "beautiful neytiri"
	},
	{
		re => "^brb\$",
		resp => "MHT(Maw Hìkrr Tìyätxaw)"
	},
	{
		re => "^ftw\$",
		resp => "TYF(tìyora'fpi)"
	},
	{
		re => "^lol\$",
		resp => "hrh(herangham)"
	},
	{
		re => "^hrh\$",
		resp => "lol"
	},
	{
		re => "^mht\$",
		resp => "brb"
	},
	{
		re => "^gn\$",
		resp => "txon lefpom"
	},
	{
		re => "^back\$",
		resp => "tolätxaw(have returned)"
	},
	{
		re => "^po täpeykìyeverkeiup nìnäk\$",
		resp => "may s/he be about to drink him/herself to death ;D"
	},
	{
		re => "^oeyä ikran slivu nga tsakrr oeng 'awsiteng mivakto\$",
		resp => "Be my ikran and let's ride together"
	},
	{
		re => "^be my ikran and let's ride together\$",
		resp => "oeyä ikran slivu nga tsakrr oeng 'awsiteng mivakto"
	},
	{
		re => "^oe 'efu ohakx\$",
		resp => "I'm hungry"
	},
	{
		re => "^I'm hungry\$",
		resp => "oe 'efu ohakx"
	},
	{
		re => "^'ivong nìk'ong\$",
		resp => "slow is fine"
	},
	{
		re => "^slow is fine\$",
		resp => "'ivong nìk'ong"
	},
	{
		re => "^'awa swawtsyìp\$",
		resp => "hold on"
	},
	{
		re => "^'awa swawtsyìp\$",
		resp => "one sec"
	},
	{
		re => "^hold on\$",
		resp => "'awa swawtsyìp"
	},
	{
		re => "^one sec\$",
		resp => "'awa swawtsyìp"
	},
	{
		re => "^etrìpa syayvi\$",
		resp => "good luck"
	},
	{
		re => "^good luck\$",
		resp => "etrìpa syayvi"
	},
	{
		re => "^Eywa ngahu\$",
		resp => "(may) Eywa (be) with you"
	},
	{
		re => "^Eywa be with you\$",
		resp => "Eywa ngahu"
	},
	{
		re => "^fìpor syaw fko vrrtep\$",
		resp => "this is vrrtep"
	},
	{
		re => "^this is vrrtep\$",
		resp => "fìpor syaw fko vrrtep"
	},
	{
		re => "^ftia oel lì'fyati leNa'vi nì'o' nìwotx\$",
		resp => "I study the Na'vi language totally for fun"
	},
	{
		re => "^I study the Na'vi language totally for fun\$",
		resp => "ftia oel lì'fyati leNa'vi nì'o' nìwotx"
	},
	{
		re => "^ftxey...fuke\$",
		resp => "whether...or not"
	},
	{
		re => "^whether...or not\$",
		resp => "ftxey...fuke"
	},
	{
		re => "^fyape syaw fko ngar",
		resp => "what's your name? (what are you called?)"
	},
	{
		re => "^what's your name",
		resp => "fyape syaw fko ngar?"
	},
	{
		re => "^what are you called",
		resp => "fyape syaw fko ngar?"
	},
	{
		re => "^hayalo oeta\$",
		resp => "next time from me (you're welcome)"
	},
	{
		re => "^hayalo ta oe\$",
		resp => "next time from me (you're welcome)"
	},
	{
		re => "^you're welcome\$",
		resp => "hayalo oeta, hayalo ta oe, kea tìkin, pum ngeyä"
	},
	{
		re => "^no problem\$",
		resp => "kea tìngäzìk"
	},
	{
		re => "^kea tìngäzìk\$",
		resp => "no problem"
	},
	{
		re => "^hayalovay\$",
		resp => "until next time"
	},
	{
		re => "^until next time\$",
		resp => "hayalovay"
	},
	{
		re => "^irayo\$",
		resp => "thanks"
	},
	{
		re => "^thanks\$",
		resp => "irayo"
	},
	{
		re => "^irayo\$",
		resp => "thanks"
	},
	{
		re => "^thanks\$",
		resp => "irayo"
	},
	{
		re => "^'ìn nga fyape nìfkrr",
		resp => "what's keeping you busy recently?"
	},
	{
		re => "^what's keeping you busy recently",
		resp => "'ìn nga fyape nìfkrr?"
	},
	{
		re => "^hi\$",
		resp => "kaltxì"
	},
	{
		re => "^hello\$",
		resp => "kaltxì"
	},
	{
		re => "^kaltxì sivi ma vrrtep\$",
		resp => "say hello, demon"
	},
	{
		re => "^say hello, demon\$",
		resp => "kaltxì sivi ma vrrtep"
	},
	{
		re => "^kefya srak\$",
		resp => "right?, is it not?"
	},
	{
		re => "^kefyak\$",
		resp => "right?, is it not?"
	},
	{
		re => "^right",
		resp => "kefyak?"
	},
	{
		re => "^is in not",
		resp => "kefya srak?"
	},
	{
		re => "^ke...kaw'it\$",
		resp => "not...at all"
	},
	{
		re => "^not...at all\$",
		resp => "ke...kaw'it"
	},
	{
		re => "^ke pxan\$",
		resp => "not worthy(response to an excessive compliment)"
	},
	{
		re => "^not worthy\$",
		resp => "ke pxan"
	},
	{
		re => "^ke tslolam\$",
		resp => "I didn't get it/understand"
	},
	{
		re => "^oe ke tslam\$",
		resp => "I don't get it/understand"
	},
	{
		re => "^I don't understand\$",
		resp => "oe ke tslam"
	},
	{
		re => "^I don't get it\$",
		resp => "oe ke tslam"
	},
	{
		re => "^ke zene win säpivi\$",
		resp => "take your time"
	},
	{
		re => "^take your time\$",
		resp => "ke zene vin säpivi"
	},
	{
		re => "^don't rush\$",
		resp => "ke zene win säpivi"
	},
	{
		re => "^kìyevame\$",
		resp => "seeya"
	},
	{
		re => "^kiyevame\$",
		resp => "seeya"
	},
	{
		re => "^see you\$",
		resp => "kìyevame"
	},
	{
		re => "^seeya\$",
		resp => "kiyevame"
	},
	{
		re => "^bye\$",
		resp => "Eywa ngahu, kìyevame"
	},
	{
		re => "^krro krro\$",
		resp => "from time to time, every now and then, sometimes"
	},
	{
		re => "^sometimes\$",
		resp => "krro krro"
	},
	{
		re => "^sometimes\$",
		resp => "krro krro"
	},
	{
		re => "^kxetse sì mikyun kop plltxe\$",
		resp => "the tail and ear also speak"
	},
	{
		re => "^the tail and ear also speak\$",
		resp => "kxetse sì mikyun kop plltxe"
	},
	{
		re => "^ma frapo, ayngaru oeyä 'eylanit alu vrrtep\$",
		resp => "everyone, to you (I introduce) my friend, vrrtep"
	},
	{
		re => "^I introduce to you my friend, vrrtep\$",
		resp => "ngaru oeyä 'eylanit alu vrtep"
	},
	{
		re => "^makto zong\$",
		resp => "take care, safe travels, ride safe"
	},
	{
		re => "^take care\$",
		resp => "makto zong"
	},
	{
		re => "^ride safe\$",
		resp => "makto zong"
	},
	{
		re => "^ne kllte\$",
		resp => "get down"
	},
	{
		re => "^get down\$",
		resp => "ne kllte"
	},
	{
		re => "^nga läpivawk nì'it nì'ul ko\$",
		resp => "tell me a little more about yourself"
	},
	{
		re => "^tell me all about yourself\$",
		resp => "nga läpivawk nìno ko"
	},
	{
		re => "^tell me about yourself\$",
		resp => "nga läpivawk ko"
	},
	{
		re => "^nga pesuhu käteng nìtrrtrr",
		resp => "who do you usually hang out with?"
	},
	{
		re => "^who do you usually hang out with",
		resp => "nga pesuhu käteng nìtrrtrr?"
	},
	{
		re => "^ngari solalew polpxaya zìsit",
		resp => "how old are you?"
	},
	{
		re => "^how old are you",
		resp => "ngari solalew polpxaya zìsit?"
	},
	{
		re => "^ngari txe'lan mawey\$",
		resp => "don't worry"
	},
	{
		re => "^ngari txe'lan mawey livu\$",
		resp => "may your heart be calm"
	},
	{
		re => "^ngaru lu fpom srak",
		resp => "how are you?, have you well-being/peace?"
	},
	{
		re => "^lu ngaru fpom srak",
		resp => "have you well-being?"
	},
	{
		re => "^how are you",
		resp => "ngaru lu fpom srak?"
	},
	{
		re => "^ngaru lu pefnetxintìn nìtrrtrr",
		resp => "what do you do?, normally you have what kind of career?"
	},
	{
		re => "^what do you do",
		resp => "ngaru lu pefnetxintìn nìtrrtrr?"
	},
	{
		re => "^what kind of career do you have",
		resp => "ngaru lu pefnetxintìn nìtrrtrr?"
	},
	{
		re => "^ngaru oeyä lertut\$",
		resp => "allow me to introduce my colleague"
	},
	{
		re => "^allow me to introduce my colleague\$",
		resp => "ngaru oeyä lertut"
	},
	{
		re => "^ngaru tsulfä\$",
		resp => "to you the mastery(response to excessive compliment)"
	},
	{
		re => "^to you the mastery\$",
		resp => "ngaru tsulfä"
	},
	{
		re => "^ngaru tut",
		resp => "...and you?"
	},
	{
		re => "^nga yawne lu oer\$",
		resp => "I love you"
	},
	{
		re => "^I love you\$",
		resp => "nga yawne lu oer"
	},
	{
		re => "^nga za'u ftu peseng",
		resp => "where are you from?"
	},
	{
		re => "^where are you from",
		resp => "nga za'u ftu peseng?"
	},
	{
		re => "^ngenga lu tupe",
		resp => "who are you?"
	},
	{
		re => "^ngeyä kxetse lu oer\$",
		resp => "your ass is mine"
	},
	{
		re => "^your ass is mine\$",
		resp => "ngeyä kxetse lu oer"
	},
	{
		re => "^nìprrte'\$",
		resp => "my pleasure, you're welcome"
	},
	{
		re => "^my pleasure\$",
		resp => "nìprrte'"
	},
	{
		re => "^oe irayo si ngaru\$",
		resp => "I thank you"
	},
	{
		re => "^thank you\$",
		resp => "oe irayo si ngaru"
	},
	{
		re => "^oel ngati kameie\$",
		resp => "I see you :) (spiritually)"
	},
	{
		re => "^I see you\$",
		resp => "oel ngati kameie"
	},
	{
		re => "^oeri solalew zìsìt amevosìng\$",
		resp => "I'm twenty years old"
	},
	{
		re => "^I'm twenty years old\$",
		resp => "oeri solalew zìsìt amevosìng"
	},
	{
		re => "^oeru meuia\$",
		resp => "It's an honor"
	},
	{
		re => "^it's an honor\$",
		resp => "oeru meuia"
	},
	{
		re => "^oeru syaw fko vrrtep\$",
		resp => "I am called vrrtep"
	},
	{
		re => "^I am called vrrtep\$",
		resp => "oeru syaw fko vrrtep"
	},
	{
		re => "^oeru teya si\$",
		resp => "it fills me (with joy,satisfaction)"
	},
	{
		re => "^it fills me\$",
		resp => "oeru teya si"
	},
	{
		re => "^oeru txoa livu\$",
		resp => "forgive me(may I have forgiveness.)"
	},
	{
		re => "^forgive me\$",
		resp => "oeru txoa livu"
	},
	{
		re => "^hì'txoa\$",
		resp => "excuse me,sorry"
	},
	{
		re => "^excuse me\$",
		resp => "hì'txoa"
	},
	{
		re => "^sorry\$",
		resp => "ngaytxoa"
	},
	{
		re => "^sorry\$",
		resp => "ngaytxoa"
	},
	{
		re => "^oe tskxekeng si säsulìnur alu tsko swizaw\$",
		resp => "I practice archery"
	},
	{
		re => "^I practice archery\$",
		resp => "oe tskxekeng si säsklìnur alu tsko swizaw"
	},
	{
		re => "^oeyä txintìn lu fwa stä'nì fayoangit\$",
		resp => "I'm a fisherman, my prime directive is to catch fish."
	},
	{
		re => "^I'm a fisherman\$",
		resp => "oeyä txintìn lu fwa stä'nì fayoangit"
	},
	{
		re => "^pum ngeyä\$",
		resp => "(the thanks are all...)yours (you're welcome)"
	},
	{
		re => "^the thanks are yours\$",
		resp => "pum ngey"
	},
	{
		re => "^rutxe läpivawk nì'it\$",
		resp => "please talk a little about yourself"
	},
	{
		re => "^please talk a little about yourself\$",
		resp => "rutxe läpivawk nì'it"
	},
	{
		re => "^rutxe liveyn\$",
		resp => "please repeat"
	},
	{
		re => "^come again",
		resp => "rutxe liveyn"
	},
	{
		re => "^what was that",
		resp => "rutxe liveyn"
	},
	{
		re => "^say again",
		resp => "rutxe liveyn"
	},
	{
		re => "^please repeat\$",
		resp => "rutxe liveyn"
	},
	{
		re => "^rutxe tìng mikyun ma frapo\$",
		resp => "your attention please, everyone"
	},
	{
		re => "^your attention please, everyone\$",
		resp => "rutxe tìng mikyun ma frapo"
	},
	{
		re => "^everyone listen\$",
		resp => "ma frapo tìng mikyun"
	},
	{
		re => "^listen\$",
		resp => "tìng mikyun"
	},
	{
		re => "^listen\$",
		resp => "tìng mikyun"
	},
	{
		re => "^seykxel sì nitram\$",
		resp => "conga rats, congratulations"
	},
	{
		re => "^conga rats\$",
		resp => "seykxel sì nitram"
	},
	{
		re => "^grats\$",
		resp => "seykxel sì nitram"
	},
	{
		re => "^congrats\$",
		resp => "seykxel sì nitram"
	},
	{
		re => "^congratulations\$",
		resp => "seykxel sì nitram"
	},
	{
		re => "^smon nìprrte'\$",
		resp => "nice to meet you"
	},
	{
		re => "^nice to meet you\$",
		resp => "smon nìprrte'"
	},
	{
		re => "^srake fnan ngal lì'fyati leNa'vi",
		resp => "are you good at Na'vi?"
	},
	{
		re => "^are you good at Na'vi",
		resp => "srake fnan ngal lì'fyati leNa'vi?"
	},
	{
		re => "^srane\$",
		resp => "yes"
	},
	{
		re => "^kehe\$",
		resp => "no"
	},
	{
		re => "^no\$",
		resp => "kehe"
	},
	{
		re => "^yes\$",
		resp => "srane"
	},
	{
		re => "^srake smon ngar oeyä 'eylan alu vrrtep\$",
		resp => "do you know my friend, vrrtep?"
	},
	{
		re => "^do you know my friend, vrrtep",
		resp => "srake smon ngar oeyä 'eylan alu vrrtep?"
	},
	{
		re => "^srefereiey nìprrte'\$",
		resp => "looking forward to it"
	},
	{
		re => "^looking forward to it\$",
		resp => "srefereiey nìprrte'"
	},
	{
		re => "^tì'efumì oeyä\$",
		resp => "in my opinion"
	},
	{
		re => "^in my opinion\$",
		resp => "tì'efumì oeyä"
	},
	{
		re => "^tì'i'avay krrä\$",
		resp => "forever, until the end"
	},
	{
		re => "^tìkangkemìri varmrrìn oe nìwotx\$",
		resp => "I was totally swamped at work"
	},
	{
		re => "^I was totally swamped at work\$",
		resp => "tìkangkemìri varmrrìn oe nìwotx"
	},
	{
		re => "^tìk'ìnìri kempe si nga\$",
		resp => "what do you do in your free time?"
	},
	{
		re => "^what do you do in your free time",
		resp => "tìk'ìnìri kempe si nga?"
	},
	{
		re => "^kempe si nga",
		resp => "what are you doing?"
	},
	{
		re => "^what are you doing",
		resp => "kempe si nga?"
	},
	{
		re => "^ngaru tìkxey\$",
		resp => "you're wrong"
	},
	{
		re => "^you're wrong\$",
		resp => "ngaru tìkxey"
	},
	{
		re => "^ngaru tìyawr\$",
		resp => "you're right"
	},
	{
		re => "^you're right\$",
		resp => "ngaru tìyawr"
	},
	{
		re => "^tì'o'ìri peu sunu ngar frato\$",
		resp => "what is your favorite way to have fun?"
	},
	{
		re => "^what is your favorite way to have fun",
		resp => "tì'o'ìri peu sunu ngar frato?"
	},
	{
		re => "^tokx eo tokx\$",
		resp => "face to face, in person"
	},
	{
		re => "^face to face\$",
		resp => "tokx eo tokx"
	},
	{
		re => "^in person\$",
		resp => "tokx eo tokx"
	},
	{
		re => "^tsalì'uri alu vrrtep ral lu 'upe\$",
		resp => "what does vrrtep mean?"
	},
	{
		re => "^what does vrrtep mean",
		resp => "tsalì'uri alu vrrtep ral lu 'upe?"
	},
	{
		re => "^tstunwi\$",
		resp => "kind. :) (response to a compliment)"
	},
	{
		re => "^tstunwi\$",
		resp => "kind. :) (response to a compliment)"
	},
	{
		re => "^kind\$",
		resp => "tstunwi"
	},
	{
		re => "^kind\$",
		resp => "tstunwi"
	},
	{
		re => "^tsun miväkxu hìkrr srak\$",
		resp => "Ima let u finish....(can I interrupt a sec?)"
	},
	{
		re => "^can I interrupt for a sec",
		resp => "tsun miväkxu hìkrr srak?"
	},
	{
		re => "^tsun nga law sivi nì'it srak\$",
		resp => "can make that a little more clear?"
	},
	{
		re => "^can you clarify a little",
		resp => "tsun nga law sivi nì'it srak?"
	},
	{
		re => "^txon lefpom\$",
		resp => "good night"
	},
	{
		re => "^good night\$",
		resp => "txon lefpom"
	},
	{
		re => "^vrrtepìri peral\$",
		resp => "what's a vrrtep(what does vrrtep mean)?"
	},
	{
		re => "^what's a vrrtep",
		resp => "vrrtepìri peral?"
	},
	{
		re => "^demon\$",
		resp => "vrrtep"
	},
	{
		re => "^vrrtep\$",
		resp => "demon, me"
	},
	{
		re => "^demon nìna'vi pelì'u\$",
		resp => "what's demon in Na'vi?"
	},
	{
		re => "^what's demon in Na'vi",
		resp => "demon nìna'vi pelì'u (slu)?"
	},
	{
		re => "^za'u nì'eng\$",
		resp => "share an interest in common"
	},
	{
		re => "^share an interest in common\$",
		resp => "za'u nì'eng"
	},
	{
		re => "^zola'u nìprrte'\$",
		resp => "welcome"
	},
	{
		re => "^welcome\$",
		resp => "zola'u nìprrte'"
	},
	{
		re => "^fayvrrtep fìtsenge lu kxanì\$",
		resp => "these demons are forbidden here"
	},
	{
		re => "^these demons are forbidden here\$",
		resp => "fayvrrtep fìtsenge lu kxanì"
	},
	{
		re => "^'awvea ultxari ohengeyä nawma sa'nok lrrtok siveiyi\$",
		resp => "may the great mother smile upon our first meeting"
	},
	{
		re => "^may the great mother smile upon our first meeting\$",
		resp => "'awvea ultxari oengeyä nawma sa'nok lrrtok siveiyi"
	},
	{
		re => "^tsun tivam\$",
		resp => "can suffice"
	},
	{
		re => "^can suffice\$",
		resp => "tsun tivam"
	},
	{
		re => "^aylì'u ngian nì'it skepek lu\$",
		resp => "words however are a tad formal"
	},
	{
		re => "^words however are a little formal\$",
		resp => "aylì'u ngian nì'it skepek lu"
	},
	{
		re => "^zìsìto amrr ftolia ohe slä zene fko nivume nìtxan\$",
		resp => "for five years have I studied but much must be learned"
	},
	{
		re => "^I've studied for five years, but there's much to learn\$",
		resp => "zìsìto amrr ftolia ohe slä zene fko nivume nìtxan"
	},
	{
		re => "^oel tsat tslam\$",
		resp => "I understand that."
	},
	{
		re => "^I understand that\$",
		resp => "oel tsat tslam."
	},
	{
		re => "^I understand this\$",
		resp => "oel fì'ut tslam."
	},
	{
		re => "^oel fì'ut tslam\$",
		resp => "I understand this."
	},
	{
		re => "^now I understand\$",
		resp => "set oe tslam"
	},
	{
		re => "^set oe tslam\$",
		resp => "now I understand"
	},
	{
		re => "^I was born in a town near the ocean, but I now live in Hometree\$",
		resp => "TL\;DR"
	},
	{
		re => "^Mrra frrtu sì lrrtok amrr sì mrra ngrr sì vrrtep amrr, wrrpa fawnrrfena 'Rrta, prrkxentrrkrr si srrìri nìhrrap. Fol fasyrrfen 'Rrtati krro krro.\$",
		resp => "you CANNOT BE SERIOUS. ok FINE: five visitors and five smiles and five roots and five demons, outside the visited Earth, tongue vibrate as for dangerous days. They shall visit the Earth from time to time. TL\;DR LOLWUT"
	},
	{
		re => "^five visitors and five smiles and five roots and five demons, outside the visited Earth, tongue vibrate as for dangerous days. They shall visit the Earth from time to time.\$",
		resp => "epic TL\;DR trollface.jpg"
	},
	{
		re => "^eltur tìtxen si\$",
		resp => "(be) interesting"
	},
	{
		re => "^interesting\$",
		resp => "eltur tìtxen si"
	},
	{
		re => "^interesting\$",
		resp => "eltur tìtxen si"
	},
	{
		re => "^needs (moar|more) (neytiri|ney)\$",
		resp => "kin Neytiriti nì'ul"
	},
	{
		re => "^kin neytiriti nì'ul\$",
		resp => "Needs more Neytiri"
	},
	{
		re => "^Ney\$",
		resp => "short for Neytiri..."
	},
	{
		re => "^Neytiri\$",
		resp => "sexyfine Na'vi chick with whom EVERYONE (skypeople included) wants to mate. TL\;DR hot female Na'vi"
	},
	{
		re => "^Ninat\$",
		resp => "the Forever Alone Na'vi female singer of Omatikaya"
	},
	{
		re => "^snu\$",
		resp => "to have sexual intercourse with"
	},
	{
		re => "^snusnu\$",
		resp => "the act of sexual intercourse"
	},
	{
		re => "^snu snu\$",
		resp => "the act of sexual intercourse"
	},
	{
		re => "^sex\$",
		resp => "snu snu"
	},
	{
		re => "^have sex\$",
		resp => "snu"
	},
	{
		re => "^douchebag\$",
		resp => "pxtxawng"
	},
	{
		re => "^pxtxawng\$",
		resp => "douchebag"
	},
	{
		re => "^Parker Selfridge\$",
		resp => "pxtxawng"
	},
	{
		re => "^Hello, my friend\$",
		resp => "Kaltxì ma oeyä 'eylan"
	},
	{
		re => "^kaltxì ma oeyä 'eylan\$",
		resp => "hello, my friend"
	},
	{
		re => "^kaltxi ma oeya 'eylan\$",
		resp => "hello, my frined(next time use ì and ä on kaltxì and oeyä)"
	},
	{
		re => "^peyral\$",
		resp => "epic female hunter,(rumored to be a transvestite) apparently with whom no one wants to mate. can't imagine why. -TL\;DR- hunter na'vi chick(?)"
	},
	{
		re => "^Mo'at\$",
		resp => "dragon lady"
	},
	{
		re => "^dragon lady\$",
		resp => "Mo'at"
	},
	{
		re => "^dragon lady\$",
		resp => "Mo'at"
	},
	{
		re => "^JakeSully\$",
		resp => "skxawng, former member of Jarhead clan"
	},
	{
		re => "^Jake Sully\$",
		resp => "skxawng, former member of Jarhead clan"
	},
	{
		re => "^Tsu'tey\$",
		resp => "male na'vi who got cheated out of mating with Ney"
	},
	{
		re => "^Eytukan\$",
		resp => "Omatikaya clan leader, father of Ney, strange accent."
	},
	{
		re => "^Txewì\$",
		resp => "some 10 year old Na'vi boy"
	},
	{
		re => "^wb\$",
		resp => "NZN (Nìmun zola'u nìprrte')"
	},
	{
		re => "^nzn\$",
		resp => "wb (welcome back)"
	},
	{
		re => "^Sylwanin\$",
		resp => "the late sister of Neytiri"
	},
	{
		re => "^entity\$",
		resp => "the entity."
	},
	{
		re => "^ma vrrtep kempe si nga\$",
		resp => "vrrtep, what are you doing?"
	},
	{
		re => "^vrrtep, what are you doing",
		resp => "ma vrrtep kempe si nga?"
	},
	{
		re => "^aungia lolu\$",
		resp => "(there) was a sign."
	},
	{
		re => "^there was a sign\$",
		resp => "aungia lolu."
	},
	{
		re => "^tsahìkur txele lu\$",
		resp => "the tsahìk has the matter (the matter is to the tsahìk)"
	},
	{
		re => "^the matter is to the tsahìk\$",
		resp => "tsahìkur txele lu."
	},
	{
		re => "^pot zamunge\$",
		resp => "bring him/her."
	},
	{
		re => "^bring him\$",
		resp => "pot(poanti) zamunge."
	},
	{
		re => "^bring her\$",
		resp => "pot(poeti) zamunge."
	},
	{
		re => "^ma sempul oel ngati kameie\$",
		resp => "Father, I see you."
	},
	{
		re => "^father, I see you\$",
		resp => "ma sempul oel ngati kameie."
	},
	{
		re => "^fìswiräti ngal pelun molunge fìtseng\$",
		resp => "why did you bring this creature here?"
	},
	{
		re => "^why did you bring this creature here",
		resp => "fìswiräti ngal pelun molunge fìtseng?"
	},
	{
		re => "^oel pot tspìmìyang tsakrr za'u aungia ta Eywa\$",
		resp => "try: oe kìman pot tspivang tsakrr za'u aungia ta Eywa (the tspìmìyang thing has been declared invalid.)"
	},
	{
		re => "^oel pot kìman tspivang tsakrr za'u aungia ta Eywa\$",
		resp => "I was about to kill him then came a sign from Eywa."
	},
	{
		re => "^I was about to kill him then came a sign from Eywa\$",
		resp => "oe kìman pot tspivang tsakrr za'u aungia ta Eywa."
	},
	{
		re => "^oeri ta peyä fahew akewong ontu teya längu\$",
		resp => "his alien smell fills my nose <negative attitude>"
	},
	{
		re => "^his alien smell fills my nose\$",
		resp => "oeri ta peyä fahew akewong ontu teya längu."
	},
	{
		re => "^as for me from his alien smell nose full is\$",
		resp => "oeri ta peyä fahew akewong ontu teya längu."
	},
	{
		re => "^tsaswiräti lonu\$",
		resp => "Release that creature."
	},
	{
		re => "^release that creature\$",
		resp => "tsaswiräti lonu."
	},
	{
		re => "^aynga neto rivikx\$",
		resp => "you all, move away"
	},
	{
		re => "^you all, move away\$",
		resp => "aynga neto rivikx"
	},
	{
		re => "^fìketuwongti oel stìyeftxaw\$",
		resp => "I'm about to examine this alien"
	},
	{
		re => "^I'm about to examine this alien\$",
		resp => "fìketuwongti oel stìyeftxaw"
	},
	{
		re => "^this is great\$",
		resp => "fì'u lu txantsan"
	},
	{
		re => "^fì'u lu txantsan\$",
		resp => "this is great"
	},
	{
		re => "^fi'u lu txantsan\$",
		resp => "this is great (next time use ì instead of i)"
	},
	{
		re => "^txantsan\$",
		resp => "awesome, excellent, great"
	},
	{
		re => "^awesome\$",
		resp => "txantsan"
	},
	{
		re => "^excellent\$",
		resp => "txantsan"
	},
	{
		re => "^ma vrrtep nga lu skxawng\$",
		resp => "vrrtep, you are a moron."
	},
	{
		re => "^vrrtep, you are a moron.\$",
		resp => "ma vrrtep nga lu skxawng."
	},
	{
		re => "^omum oel futa nga lu slä 'upe lu oe\$",
		resp => "I know you are, but what am I?"
	},
	{
		re => "^I know you are, but what am I",
		resp => "omum oel futa nga lu slä 'upe lu oe?"
	},
	{
		re => "^Eywa'eveng\$",
		resp => "prop n. Pandora"
	},
	{
		re => "^Pandora\$",
		resp => "prop n. Eywa'eveng"
	},
	{
		re => "^kxayla tsìng",
		resp => "high four"
	},
	{
		re => "^high four\$",
		resp => "kxayla tsìng"
	},
	{
		re => "^Eywa\$",
		resp => "Who's EYWA?! Only their Goddess, made up of ALL living things. Everything they know. You'd know this if you had any training whatsoever.."
	}
);

1;
