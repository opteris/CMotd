#!/usr/bin/perl

#¸.´¸.*´¨) ¸.*¨)
#(¸.´ (¸.` ¤ (c) 2015 Opteris - Michal Krowicki

use POSIX;
use feature qw(switch);
no warnings 'experimental::smartmatch';

my @A = (
":'####:",
" ##. ##",
" ##: ##",
" ######",
" ##: ##",
"..::..:");

my @B = (
"'######:",
" ##.. ##",
" ######:",
" ##.. ##",
" ######:",
"......::");

my @C = (
":'#####:",
" ##.. ##",
" ##:: ..",
" ##:: ##",
". #####:",
":.....::");

my @D = (
"'######:",
" ##.. ##",
" ##:: ##",
" ##:: ##",
" ######:",
"......::");

my @E = (
"'######",
" ##...:",
" ####::",
" ##.:::",
" ######",
"......:");

my @F = (
"'######",
" ##...:",
" ####::",
" ##.:::",
" ##::::",
"..:::::");

my @G = (
":'#####:",
"'##...::",
" ##.####",
" ##:. ##",
". #####:",
":.....::");

my @H = (
"'##::'##",
" ##:: ##",
" #######",
" ##..'##",
" ##:: ##",
"..:::..:");

my @I = (
"'##",
" ##",
" ##",
" ##",
" ##",
"..:");

my @J = (
"::::'##",
":::: ##",
":::: ##",
"'##: ##",
". ####:",
":....::");

my @K = (
"'##:'##",
" ##:##:",
" ####::",
" ##.##:",
" ##: ##",
"..::..:");

my @L = (
"'##::::",
" ##::::",
" ##::::",
" ##::::",
" ######",
"......:");

my @M = (
"'##:::::##",
" ###:::###",
" ## #:#'##",
" ##: #: ##",
" ##:.:: ##",
"..:::::..:");

my @N = (
"'##::'##",
" ###: ##",
" ##'#.##",
" ##. ###",
" ##:. ##",
"..::::.:");

my @O = (
":'#####:",
"'##.. ##",
" ##:: ##",
" ##:: ##",
". #####:",
":.....::");

my @P = (
"'######:",
" ##.. ##",
" ##:: ##",
" ######:",
" ##...::",
"..::::::");

my @Q = (
":'#####:",
"'##.. ##",
" ##:: ##",
" ##'###:",
". ###'##",
":...:..:");

my @R = (
"'######:",
" ##.. ##",
" ######:",
" ##..##:",
" ##:: ##",
"..:::..:");

my @S = (
":'####:",
" #...::",
".'####.",
":.... #",
":'####:",
":....::");

my @T = (
"'######",
":. ##::",
":: ##::",
":: ##::",
":: ##::",
"::..:::");

my @U = (
"'##::'##",
" ##:: ##",
" ##:: ##",
" ##:: ##",
". #####:",
":.....::");

my @V = (
"'##:::'##",
" ##:::.##",
": ##::##:",
":: ####::",
"::: ##:::",
":::..::::");

my @W = (
"'##::::'##",
" ##::#: ##",
" ##:# # ##",
" ###:: ###",
" ##:::: ##",
"..:::::..:");

my @X = (
"'##::.##",
": ##.##:",
":: ###::",
":.##'##:",
".##:: ##",
"..:::..:");

my @Y = (
"'##::::'##",
": ##:: ##:",
":: ## ##::",
"::: ##::::",
"::: ##::::",
":::..:::::");

my @Z = (
"'######",
"... ##:",
":: ##::",
": ##:::",
" ######",
"......:");

my @SPACE = (
":",
":",
":",
":",
":",
":");

my @BANNER = (
"",
"",
"",
"",
"",
"");

# Ponizej wpisujemy sobie wyraz, ktory chcemy wyswietlic //TODO: do przerobki, zeby pobieralo z wiersza polecen//

my $NAPIS = uc "p o c z t a";
my @chars = split("", $NAPIS);

foreach (@chars) {
my $i=0;
my $char = "$_";
# print $char;

given ($char) {
when ("A") { foreach (@A) {$BANNER[$i++].="$_";}}
when ("B") { foreach (@B) {$BANNER[$i++].="$_";}}
when ("C") { foreach (@C) {$BANNER[$i++].="$_";}}
when ("D") { foreach (@D) {$BANNER[$i++].="$_";}}
when ("E") { foreach (@E) {$BANNER[$i++].="$_";}}
when ("F") { foreach (@F) {$BANNER[$i++].="$_";}}
when ("G") { foreach (@G) {$BANNER[$i++].="$_";}}
when ("H") { foreach (@H) {$BANNER[$i++].="$_";}}
when ("I") { foreach (@I) {$BANNER[$i++].="$_";}}
when ("J") { foreach (@J) {$BANNER[$i++].="$_";}}
when ("K") { foreach (@K) {$BANNER[$i++].="$_";}}
when ("L") { foreach (@L) {$BANNER[$i++].="$_";}}
when ("M") { foreach (@M) {$BANNER[$i++].="$_";}}
when ("N") { foreach (@N) {$BANNER[$i++].="$_";}}
when ("O") { foreach (@O) {$BANNER[$i++].="$_";}}
when ("P") { foreach (@P) {$BANNER[$i++].="$_";}}
when ("Q") { foreach (@Q) {$BANNER[$i++].="$_";}}
when ("R") { foreach (@R) {$BANNER[$i++].="$_";}}
when ("S") { foreach (@S) {$BANNER[$i++].="$_";}}
when ("T") { foreach (@T) {$BANNER[$i++].="$_";}}
when ("U") { foreach (@U) {$BANNER[$i++].="$_";}}
when ("V") { foreach (@V) {$BANNER[$i++].="$_";}}
when ("W") { foreach (@W) {$BANNER[$i++].="$_";}}
when ("X") { foreach (@X) {$BANNER[$i++].="$_";}}
when ("Y") { foreach (@Y) {$BANNER[$i++].="$_";}}
when ("Z") { foreach (@Z) {$BANNER[$i++].="$_";}}
when (" ") { foreach (@SPACE) {$BANNER[$i++].="$_";}}
default { print ""; }
}
}

$len=0;

foreach (split("",$BANNER[1]))
{
$BANNER[6].=":";
$len++;
}

if ($len > 80)
{
print "NAPIS ZBYT DLUGI!";
exit;
}

my $begin = ceil((80-$len)/2);
my $beginStr= ( ':' x $begin );
my $end = 80-$begin-$len;
my $endStr= ( ':' x $end );

#print "$begin $len $end\n";

my $j=0;
foreach (@BANNER)
{
$_=$beginStr.$_.$endStr;
}

my $prev="";
my $CLRBNR="";
foreach (@BANNER)
{
foreach my $ch (split("",$_))
{
if (($ch eq '#') && ($ch ne $prev))
{ $CLRBNR.="\c[[0;90m".$ch; } #Tu mozna ustawic kolor napisu //TODO: dopisac intuicyjna funkcje Color zwracajaca ESC+kolor zamiast wklepywac kody jak teraz//
elsif (($ch ne '#') && ($prev eq '#'))
{ $CLRBNR.="\c[[0;90m".$ch; } # a tu kolor "tla"
else
{$CLRBNR.=$ch;}
$prev=$ch;
}
$CLRBNR.="\n";
}
# ponizej jeszcze raz kolor tla
print "\n\c[[0;90m".$CLRBNR."\c[[0m";;
