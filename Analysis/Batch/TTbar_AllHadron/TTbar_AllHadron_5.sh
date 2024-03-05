#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_4" "TTbar_AllHadron_43" "TTbar_AllHadron_82" "TTbar_AllHadron_121" "TTbar_AllHadron_160" "TTbar_AllHadron_199" "TTbar_AllHadron_238" "TTbar_AllHadron_277" "TTbar_AllHadron_316" "TTbar_AllHadron_355" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
