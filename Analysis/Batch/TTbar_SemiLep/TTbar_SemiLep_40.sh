#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_39" "TTbar_SemiLep_92" "TTbar_SemiLep_145" "TTbar_SemiLep_198" "TTbar_SemiLep_251" "TTbar_SemiLep_304" "TTbar_SemiLep_357" "TTbar_SemiLep_410" "TTbar_SemiLep_463" "TTbar_SemiLep_516" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
