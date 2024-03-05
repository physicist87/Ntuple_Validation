#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_35" "TTbar_AllHadron_74" "TTbar_AllHadron_113" "TTbar_AllHadron_152" "TTbar_AllHadron_191" "TTbar_AllHadron_230" "TTbar_AllHadron_269" "TTbar_AllHadron_308" "TTbar_AllHadron_347" "TTbar_AllHadron_386" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
