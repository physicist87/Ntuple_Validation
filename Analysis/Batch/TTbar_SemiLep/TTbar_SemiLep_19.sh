#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_18" "TTbar_SemiLep_71" "TTbar_SemiLep_124" "TTbar_SemiLep_177" "TTbar_SemiLep_230" "TTbar_SemiLep_283" "TTbar_SemiLep_336" "TTbar_SemiLep_389" "TTbar_SemiLep_442" "TTbar_SemiLep_495" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
