#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_21" "TTbar_AllHadron_60" "TTbar_AllHadron_99" "TTbar_AllHadron_138" "TTbar_AllHadron_177" "TTbar_AllHadron_216" "TTbar_AllHadron_255" "TTbar_AllHadron_294" "TTbar_AllHadron_333" "TTbar_AllHadron_372" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
