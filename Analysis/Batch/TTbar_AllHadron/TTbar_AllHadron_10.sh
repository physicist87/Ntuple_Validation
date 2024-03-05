#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_9" "TTbar_AllHadron_48" "TTbar_AllHadron_87" "TTbar_AllHadron_126" "TTbar_AllHadron_165" "TTbar_AllHadron_204" "TTbar_AllHadron_243" "TTbar_AllHadron_282" "TTbar_AllHadron_321" "TTbar_AllHadron_360" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
