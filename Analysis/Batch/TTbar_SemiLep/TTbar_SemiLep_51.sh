#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_50" "TTbar_SemiLep_103" "TTbar_SemiLep_156" "TTbar_SemiLep_209" "TTbar_SemiLep_262" "TTbar_SemiLep_315" "TTbar_SemiLep_368" "TTbar_SemiLep_421" "TTbar_SemiLep_474" "TTbar_SemiLep_527" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
