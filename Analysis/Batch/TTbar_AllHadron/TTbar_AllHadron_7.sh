#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_6" "TTbar_AllHadron_45" "TTbar_AllHadron_84" "TTbar_AllHadron_123" "TTbar_AllHadron_162" "TTbar_AllHadron_201" "TTbar_AllHadron_240" "TTbar_AllHadron_279" "TTbar_AllHadron_318" "TTbar_AllHadron_357" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
