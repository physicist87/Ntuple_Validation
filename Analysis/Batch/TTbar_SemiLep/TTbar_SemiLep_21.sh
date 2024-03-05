#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_20" "TTbar_SemiLep_73" "TTbar_SemiLep_126" "TTbar_SemiLep_179" "TTbar_SemiLep_232" "TTbar_SemiLep_285" "TTbar_SemiLep_338" "TTbar_SemiLep_391" "TTbar_SemiLep_444" "TTbar_SemiLep_497" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
