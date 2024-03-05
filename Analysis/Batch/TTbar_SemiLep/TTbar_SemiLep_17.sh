#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_16" "TTbar_SemiLep_69" "TTbar_SemiLep_122" "TTbar_SemiLep_175" "TTbar_SemiLep_228" "TTbar_SemiLep_281" "TTbar_SemiLep_334" "TTbar_SemiLep_387" "TTbar_SemiLep_440" "TTbar_SemiLep_493" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
