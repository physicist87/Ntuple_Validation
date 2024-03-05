#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_49" "TTbar_SemiLep_102" "TTbar_SemiLep_155" "TTbar_SemiLep_208" "TTbar_SemiLep_261" "TTbar_SemiLep_314" "TTbar_SemiLep_367" "TTbar_SemiLep_420" "TTbar_SemiLep_473" "TTbar_SemiLep_526" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
