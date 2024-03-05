#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_28" "TTbar_AllHadron_67" "TTbar_AllHadron_106" "TTbar_AllHadron_145" "TTbar_AllHadron_184" "TTbar_AllHadron_223" "TTbar_AllHadron_262" "TTbar_AllHadron_301" "TTbar_AllHadron_340" "TTbar_AllHadron_379" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
