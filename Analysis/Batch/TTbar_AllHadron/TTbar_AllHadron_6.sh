#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_5" "TTbar_AllHadron_44" "TTbar_AllHadron_83" "TTbar_AllHadron_122" "TTbar_AllHadron_161" "TTbar_AllHadron_200" "TTbar_AllHadron_239" "TTbar_AllHadron_278" "TTbar_AllHadron_317" "TTbar_AllHadron_356" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
