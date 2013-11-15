$id=shift;
if($id%50==0){$r=$id/50;$s=50};
$r=($id-$id%50)/50+1; $s=$id%50;
open IN, 'blb_lin_reg_mini.txt';
$outfile='subsample'.$id.'.txt';
open OUT, ">$outfile";
$nu=0;
#$li=`Rscript sample.R`;  print $#
@juicy=split(' ',`Rscript sample.R $r`); $num=0; 
#print $#juicy;
while ($line=<IN>) {
  $nu+=1; 
  if ($nu==$juicy[$num]) {
  	chomp($line); print OUT $line."\n"; 
  	$num+=1
  }
} 
close IN; close OUT;
$Rcommand='Rscript fit.R '.$id;
@paras=split(' ',`$Rcommand`);
open OUT, '>jiecao'.$id.'txt';
@para=join("\n",@paras);
print OUT @para;
