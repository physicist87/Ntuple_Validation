#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_25" "TTbar_AllHadron_64" "TTbar_AllHadron_103" "TTbar_AllHadron_142" "TTbar_AllHadron_181" "TTbar_AllHadron_220" "TTbar_AllHadron_259" "TTbar_AllHadron_298" "TTbar_AllHadron_337" "TTbar_AllHadron_376" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
