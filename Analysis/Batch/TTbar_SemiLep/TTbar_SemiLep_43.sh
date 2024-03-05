#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_42" "TTbar_SemiLep_95" "TTbar_SemiLep_148" "TTbar_SemiLep_201" "TTbar_SemiLep_254" "TTbar_SemiLep_307" "TTbar_SemiLep_360" "TTbar_SemiLep_413" "TTbar_SemiLep_466" "TTbar_SemiLep_519" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
