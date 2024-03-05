#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_32" "TTbar_SemiLep_85" "TTbar_SemiLep_138" "TTbar_SemiLep_191" "TTbar_SemiLep_244" "TTbar_SemiLep_297" "TTbar_SemiLep_350" "TTbar_SemiLep_403" "TTbar_SemiLep_456" "TTbar_SemiLep_509" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
