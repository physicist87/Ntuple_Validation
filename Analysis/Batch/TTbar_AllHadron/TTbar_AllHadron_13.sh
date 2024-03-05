#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_12" "TTbar_AllHadron_51" "TTbar_AllHadron_90" "TTbar_AllHadron_129" "TTbar_AllHadron_168" "TTbar_AllHadron_207" "TTbar_AllHadron_246" "TTbar_AllHadron_285" "TTbar_AllHadron_324" "TTbar_AllHadron_363" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
