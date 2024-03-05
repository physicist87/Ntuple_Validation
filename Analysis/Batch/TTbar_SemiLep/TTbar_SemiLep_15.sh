#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_14" "TTbar_SemiLep_67" "TTbar_SemiLep_120" "TTbar_SemiLep_173" "TTbar_SemiLep_226" "TTbar_SemiLep_279" "TTbar_SemiLep_332" "TTbar_SemiLep_385" "TTbar_SemiLep_438" "TTbar_SemiLep_491" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
