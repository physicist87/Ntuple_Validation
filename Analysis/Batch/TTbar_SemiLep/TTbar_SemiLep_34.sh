#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_33" "TTbar_SemiLep_86" "TTbar_SemiLep_139" "TTbar_SemiLep_192" "TTbar_SemiLep_245" "TTbar_SemiLep_298" "TTbar_SemiLep_351" "TTbar_SemiLep_404" "TTbar_SemiLep_457" "TTbar_SemiLep_510" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
