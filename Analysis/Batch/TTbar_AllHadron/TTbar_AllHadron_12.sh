#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_11" "TTbar_AllHadron_50" "TTbar_AllHadron_89" "TTbar_AllHadron_128" "TTbar_AllHadron_167" "TTbar_AllHadron_206" "TTbar_AllHadron_245" "TTbar_AllHadron_284" "TTbar_AllHadron_323" "TTbar_AllHadron_362" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
