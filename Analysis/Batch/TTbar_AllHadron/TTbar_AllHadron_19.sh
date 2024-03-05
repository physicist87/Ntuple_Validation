#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_18" "TTbar_AllHadron_57" "TTbar_AllHadron_96" "TTbar_AllHadron_135" "TTbar_AllHadron_174" "TTbar_AllHadron_213" "TTbar_AllHadron_252" "TTbar_AllHadron_291" "TTbar_AllHadron_330" "TTbar_AllHadron_369" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
