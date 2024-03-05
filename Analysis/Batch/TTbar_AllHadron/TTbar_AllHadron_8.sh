#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_7" "TTbar_AllHadron_46" "TTbar_AllHadron_85" "TTbar_AllHadron_124" "TTbar_AllHadron_163" "TTbar_AllHadron_202" "TTbar_AllHadron_241" "TTbar_AllHadron_280" "TTbar_AllHadron_319" "TTbar_AllHadron_358" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
