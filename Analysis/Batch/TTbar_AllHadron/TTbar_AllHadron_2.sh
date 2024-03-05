#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_1" "TTbar_AllHadron_40" "TTbar_AllHadron_79" "TTbar_AllHadron_118" "TTbar_AllHadron_157" "TTbar_AllHadron_196" "TTbar_AllHadron_235" "TTbar_AllHadron_274" "TTbar_AllHadron_313" "TTbar_AllHadron_352" "TTbar_AllHadron_391" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
