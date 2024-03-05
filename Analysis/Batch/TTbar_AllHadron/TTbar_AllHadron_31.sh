#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_30" "TTbar_AllHadron_69" "TTbar_AllHadron_108" "TTbar_AllHadron_147" "TTbar_AllHadron_186" "TTbar_AllHadron_225" "TTbar_AllHadron_264" "TTbar_AllHadron_303" "TTbar_AllHadron_342" "TTbar_AllHadron_381" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
