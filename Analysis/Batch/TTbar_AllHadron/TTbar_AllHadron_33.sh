#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_32" "TTbar_AllHadron_71" "TTbar_AllHadron_110" "TTbar_AllHadron_149" "TTbar_AllHadron_188" "TTbar_AllHadron_227" "TTbar_AllHadron_266" "TTbar_AllHadron_305" "TTbar_AllHadron_344" "TTbar_AllHadron_383" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
