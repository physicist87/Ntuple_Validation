#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_37" "TTbar_AllHadron_76" "TTbar_AllHadron_115" "TTbar_AllHadron_154" "TTbar_AllHadron_193" "TTbar_AllHadron_232" "TTbar_AllHadron_271" "TTbar_AllHadron_310" "TTbar_AllHadron_349" "TTbar_AllHadron_388" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
