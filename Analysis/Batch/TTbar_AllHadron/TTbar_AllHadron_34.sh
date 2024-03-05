#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_33" "TTbar_AllHadron_72" "TTbar_AllHadron_111" "TTbar_AllHadron_150" "TTbar_AllHadron_189" "TTbar_AllHadron_228" "TTbar_AllHadron_267" "TTbar_AllHadron_306" "TTbar_AllHadron_345" "TTbar_AllHadron_384" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
