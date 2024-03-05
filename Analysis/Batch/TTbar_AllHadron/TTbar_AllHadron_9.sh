#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_8" "TTbar_AllHadron_47" "TTbar_AllHadron_86" "TTbar_AllHadron_125" "TTbar_AllHadron_164" "TTbar_AllHadron_203" "TTbar_AllHadron_242" "TTbar_AllHadron_281" "TTbar_AllHadron_320" "TTbar_AllHadron_359" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
