#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_17" "TTbar_AllHadron_56" "TTbar_AllHadron_95" "TTbar_AllHadron_134" "TTbar_AllHadron_173" "TTbar_AllHadron_212" "TTbar_AllHadron_251" "TTbar_AllHadron_290" "TTbar_AllHadron_329" "TTbar_AllHadron_368" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
