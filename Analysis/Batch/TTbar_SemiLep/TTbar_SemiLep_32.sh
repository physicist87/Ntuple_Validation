#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_31" "TTbar_SemiLep_84" "TTbar_SemiLep_137" "TTbar_SemiLep_190" "TTbar_SemiLep_243" "TTbar_SemiLep_296" "TTbar_SemiLep_349" "TTbar_SemiLep_402" "TTbar_SemiLep_455" "TTbar_SemiLep_508" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
