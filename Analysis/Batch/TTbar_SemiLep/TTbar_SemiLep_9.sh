#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_8" "TTbar_SemiLep_61" "TTbar_SemiLep_114" "TTbar_SemiLep_167" "TTbar_SemiLep_220" "TTbar_SemiLep_273" "TTbar_SemiLep_326" "TTbar_SemiLep_379" "TTbar_SemiLep_432" "TTbar_SemiLep_485" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
