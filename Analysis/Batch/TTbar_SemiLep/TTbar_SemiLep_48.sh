#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_47" "TTbar_SemiLep_100" "TTbar_SemiLep_153" "TTbar_SemiLep_206" "TTbar_SemiLep_259" "TTbar_SemiLep_312" "TTbar_SemiLep_365" "TTbar_SemiLep_418" "TTbar_SemiLep_471" "TTbar_SemiLep_524" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
