#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_27" "TTbar_AllHadron_66" "TTbar_AllHadron_105" "TTbar_AllHadron_144" "TTbar_AllHadron_183" "TTbar_AllHadron_222" "TTbar_AllHadron_261" "TTbar_AllHadron_300" "TTbar_AllHadron_339" "TTbar_AllHadron_378" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
