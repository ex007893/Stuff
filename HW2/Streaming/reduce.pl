#!/usr/bin/perl
$first=<STDIN>; chomp($first);  $current=$first; $num=1;
while($line=<STDIN>){
	chomp($line);
	if($line eq $current) {$num+=1; next};
	$current=~/([0-9.-]+).*?([0-9.-]+)/;
	$m=$1+0.1; $n=$2+0.1;
	printf '%.1f,%.1f,%.1f,%.1f,%d',$1,$m,$2,$n,$num; print "\n";
	$current=$line; $num=1
}
$current=~/([0-9.-]+).*([0-9.-]+)/;
$m=$1+0.1; $n=$2+0.1;
printf '%.1f,%.1f,%.1f,%.1f,%d',$1,$m,$2,$n,$num;
