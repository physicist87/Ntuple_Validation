#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_15" "TTbar_SemiLep_68" "TTbar_SemiLep_121" "TTbar_SemiLep_174" "TTbar_SemiLep_227" "TTbar_SemiLep_280" "TTbar_SemiLep_333" "TTbar_SemiLep_386" "TTbar_SemiLep_439" "TTbar_SemiLep_492" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
