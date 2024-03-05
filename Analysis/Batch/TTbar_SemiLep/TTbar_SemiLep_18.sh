#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_17" "TTbar_SemiLep_70" "TTbar_SemiLep_123" "TTbar_SemiLep_176" "TTbar_SemiLep_229" "TTbar_SemiLep_282" "TTbar_SemiLep_335" "TTbar_SemiLep_388" "TTbar_SemiLep_441" "TTbar_SemiLep_494" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
