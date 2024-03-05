#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_36" "TTbar_AllHadron_75" "TTbar_AllHadron_114" "TTbar_AllHadron_153" "TTbar_AllHadron_192" "TTbar_AllHadron_231" "TTbar_AllHadron_270" "TTbar_AllHadron_309" "TTbar_AllHadron_348" "TTbar_AllHadron_387" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
