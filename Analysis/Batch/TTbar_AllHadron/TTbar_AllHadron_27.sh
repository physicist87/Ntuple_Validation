#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_26" "TTbar_AllHadron_65" "TTbar_AllHadron_104" "TTbar_AllHadron_143" "TTbar_AllHadron_182" "TTbar_AllHadron_221" "TTbar_AllHadron_260" "TTbar_AllHadron_299" "TTbar_AllHadron_338" "TTbar_AllHadron_377" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
