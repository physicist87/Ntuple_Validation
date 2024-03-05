#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_3" "TTbar_AllHadron_42" "TTbar_AllHadron_81" "TTbar_AllHadron_120" "TTbar_AllHadron_159" "TTbar_AllHadron_198" "TTbar_AllHadron_237" "TTbar_AllHadron_276" "TTbar_AllHadron_315" "TTbar_AllHadron_354" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
