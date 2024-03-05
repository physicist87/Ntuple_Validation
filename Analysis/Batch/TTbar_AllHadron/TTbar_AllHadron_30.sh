#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_29" "TTbar_AllHadron_68" "TTbar_AllHadron_107" "TTbar_AllHadron_146" "TTbar_AllHadron_185" "TTbar_AllHadron_224" "TTbar_AllHadron_263" "TTbar_AllHadron_302" "TTbar_AllHadron_341" "TTbar_AllHadron_380" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
