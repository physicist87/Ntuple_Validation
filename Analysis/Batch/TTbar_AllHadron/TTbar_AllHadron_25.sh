#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_24" "TTbar_AllHadron_63" "TTbar_AllHadron_102" "TTbar_AllHadron_141" "TTbar_AllHadron_180" "TTbar_AllHadron_219" "TTbar_AllHadron_258" "TTbar_AllHadron_297" "TTbar_AllHadron_336" "TTbar_AllHadron_375" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
