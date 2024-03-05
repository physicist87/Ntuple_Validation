#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_23" "TTbar_SemiLep_76" "TTbar_SemiLep_129" "TTbar_SemiLep_182" "TTbar_SemiLep_235" "TTbar_SemiLep_288" "TTbar_SemiLep_341" "TTbar_SemiLep_394" "TTbar_SemiLep_447" "TTbar_SemiLep_500" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
