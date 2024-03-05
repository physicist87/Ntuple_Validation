#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_16" "TTbar_AllHadron_55" "TTbar_AllHadron_94" "TTbar_AllHadron_133" "TTbar_AllHadron_172" "TTbar_AllHadron_211" "TTbar_AllHadron_250" "TTbar_AllHadron_289" "TTbar_AllHadron_328" "TTbar_AllHadron_367" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
