#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_34" "TTbar_AllHadron_73" "TTbar_AllHadron_112" "TTbar_AllHadron_151" "TTbar_AllHadron_190" "TTbar_AllHadron_229" "TTbar_AllHadron_268" "TTbar_AllHadron_307" "TTbar_AllHadron_346" "TTbar_AllHadron_385" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
