#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_14" "TTbar_AllHadron_53" "TTbar_AllHadron_92" "TTbar_AllHadron_131" "TTbar_AllHadron_170" "TTbar_AllHadron_209" "TTbar_AllHadron_248" "TTbar_AllHadron_287" "TTbar_AllHadron_326" "TTbar_AllHadron_365" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
