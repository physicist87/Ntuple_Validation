#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_12" "TTbar_SemiLep_65" "TTbar_SemiLep_118" "TTbar_SemiLep_171" "TTbar_SemiLep_224" "TTbar_SemiLep_277" "TTbar_SemiLep_330" "TTbar_SemiLep_383" "TTbar_SemiLep_436" "TTbar_SemiLep_489" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
