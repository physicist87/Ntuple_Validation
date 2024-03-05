#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_44" "TTbar_SemiLep_97" "TTbar_SemiLep_150" "TTbar_SemiLep_203" "TTbar_SemiLep_256" "TTbar_SemiLep_309" "TTbar_SemiLep_362" "TTbar_SemiLep_415" "TTbar_SemiLep_468" "TTbar_SemiLep_521" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
