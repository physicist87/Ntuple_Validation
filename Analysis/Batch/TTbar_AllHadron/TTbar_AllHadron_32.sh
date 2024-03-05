#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_31" "TTbar_AllHadron_70" "TTbar_AllHadron_109" "TTbar_AllHadron_148" "TTbar_AllHadron_187" "TTbar_AllHadron_226" "TTbar_AllHadron_265" "TTbar_AllHadron_304" "TTbar_AllHadron_343" "TTbar_AllHadron_382" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
