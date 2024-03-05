#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_22" "TTbar_AllHadron_61" "TTbar_AllHadron_100" "TTbar_AllHadron_139" "TTbar_AllHadron_178" "TTbar_AllHadron_217" "TTbar_AllHadron_256" "TTbar_AllHadron_295" "TTbar_AllHadron_334" "TTbar_AllHadron_373" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
