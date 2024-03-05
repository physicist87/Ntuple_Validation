#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_48" "TTbar_SemiLep_101" "TTbar_SemiLep_154" "TTbar_SemiLep_207" "TTbar_SemiLep_260" "TTbar_SemiLep_313" "TTbar_SemiLep_366" "TTbar_SemiLep_419" "TTbar_SemiLep_472" "TTbar_SemiLep_525" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
