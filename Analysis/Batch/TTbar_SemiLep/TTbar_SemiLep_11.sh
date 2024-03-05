#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_10" "TTbar_SemiLep_63" "TTbar_SemiLep_116" "TTbar_SemiLep_169" "TTbar_SemiLep_222" "TTbar_SemiLep_275" "TTbar_SemiLep_328" "TTbar_SemiLep_381" "TTbar_SemiLep_434" "TTbar_SemiLep_487" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
