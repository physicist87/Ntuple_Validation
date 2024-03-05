#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_15" "TTbar_AllHadron_54" "TTbar_AllHadron_93" "TTbar_AllHadron_132" "TTbar_AllHadron_171" "TTbar_AllHadron_210" "TTbar_AllHadron_249" "TTbar_AllHadron_288" "TTbar_AllHadron_327" "TTbar_AllHadron_366" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
