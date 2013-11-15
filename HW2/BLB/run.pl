$id=shift;
$s=($id-$id%50)/50+1; $r=$id%50;
if($id%50==0){$s=$id/50;$r=50};
open IN, '/home/pdbaines/data/blb_lin_reg_data.txt';
$outfile='subsample'.$id.'.txt';
open OUT, ">$outfile";
$nu=0;
#$li=`Rscript sample.R`;  print $#
@juicy=split(' ',`Rscript sample.R $s`); $num=0; 
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
$subname=sprintf("coef_%02d_%02d",$s,$r); $name='out/'.$subname.'.txt';
open OUT, ">$name";
@para=join("\n",@paras);
print OUT @para;
