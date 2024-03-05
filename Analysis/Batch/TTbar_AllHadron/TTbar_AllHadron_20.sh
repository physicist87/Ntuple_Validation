#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_19" "TTbar_AllHadron_58" "TTbar_AllHadron_97" "TTbar_AllHadron_136" "TTbar_AllHadron_175" "TTbar_AllHadron_214" "TTbar_AllHadron_253" "TTbar_AllHadron_292" "TTbar_AllHadron_331" "TTbar_AllHadron_370" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
