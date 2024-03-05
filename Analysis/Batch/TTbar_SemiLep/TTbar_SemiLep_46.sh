#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_45" "TTbar_SemiLep_98" "TTbar_SemiLep_151" "TTbar_SemiLep_204" "TTbar_SemiLep_257" "TTbar_SemiLep_310" "TTbar_SemiLep_363" "TTbar_SemiLep_416" "TTbar_SemiLep_469" "TTbar_SemiLep_522" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
