#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_1" "TTbar_SemiLep_54" "TTbar_SemiLep_107" "TTbar_SemiLep_160" "TTbar_SemiLep_213" "TTbar_SemiLep_266" "TTbar_SemiLep_319" "TTbar_SemiLep_372" "TTbar_SemiLep_425" "TTbar_SemiLep_478" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
