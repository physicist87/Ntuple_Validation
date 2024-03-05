#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_10" "TTbar_AllHadron_49" "TTbar_AllHadron_88" "TTbar_AllHadron_127" "TTbar_AllHadron_166" "TTbar_AllHadron_205" "TTbar_AllHadron_244" "TTbar_AllHadron_283" "TTbar_AllHadron_322" "TTbar_AllHadron_361" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
