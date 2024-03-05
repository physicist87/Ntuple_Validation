#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_13" "TTbar_AllHadron_52" "TTbar_AllHadron_91" "TTbar_AllHadron_130" "TTbar_AllHadron_169" "TTbar_AllHadron_208" "TTbar_AllHadron_247" "TTbar_AllHadron_286" "TTbar_AllHadron_325" "TTbar_AllHadron_364" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
