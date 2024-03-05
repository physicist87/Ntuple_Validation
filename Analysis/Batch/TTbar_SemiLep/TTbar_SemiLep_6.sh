#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_5" "TTbar_SemiLep_58" "TTbar_SemiLep_111" "TTbar_SemiLep_164" "TTbar_SemiLep_217" "TTbar_SemiLep_270" "TTbar_SemiLep_323" "TTbar_SemiLep_376" "TTbar_SemiLep_429" "TTbar_SemiLep_482" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
