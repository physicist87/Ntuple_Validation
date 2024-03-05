#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_26" "TTbar_SemiLep_79" "TTbar_SemiLep_132" "TTbar_SemiLep_185" "TTbar_SemiLep_238" "TTbar_SemiLep_291" "TTbar_SemiLep_344" "TTbar_SemiLep_397" "TTbar_SemiLep_450" "TTbar_SemiLep_503" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
