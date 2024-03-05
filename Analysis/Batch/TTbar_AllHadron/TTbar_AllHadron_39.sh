#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_38" "TTbar_AllHadron_77" "TTbar_AllHadron_116" "TTbar_AllHadron_155" "TTbar_AllHadron_194" "TTbar_AllHadron_233" "TTbar_AllHadron_272" "TTbar_AllHadron_311" "TTbar_AllHadron_350" "TTbar_AllHadron_389" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
