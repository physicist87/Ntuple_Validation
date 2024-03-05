#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_37" "TTbar_SemiLep_90" "TTbar_SemiLep_143" "TTbar_SemiLep_196" "TTbar_SemiLep_249" "TTbar_SemiLep_302" "TTbar_SemiLep_355" "TTbar_SemiLep_408" "TTbar_SemiLep_461" "TTbar_SemiLep_514" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
