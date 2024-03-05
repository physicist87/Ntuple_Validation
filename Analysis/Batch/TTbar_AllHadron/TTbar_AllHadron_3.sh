#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_2" "TTbar_AllHadron_41" "TTbar_AllHadron_80" "TTbar_AllHadron_119" "TTbar_AllHadron_158" "TTbar_AllHadron_197" "TTbar_AllHadron_236" "TTbar_AllHadron_275" "TTbar_AllHadron_314" "TTbar_AllHadron_353" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
