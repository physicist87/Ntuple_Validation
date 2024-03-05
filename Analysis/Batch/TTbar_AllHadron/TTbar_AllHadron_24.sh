#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_23" "TTbar_AllHadron_62" "TTbar_AllHadron_101" "TTbar_AllHadron_140" "TTbar_AllHadron_179" "TTbar_AllHadron_218" "TTbar_AllHadron_257" "TTbar_AllHadron_296" "TTbar_AllHadron_335" "TTbar_AllHadron_374" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
