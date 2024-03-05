#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_9" "TTbar_SemiLep_62" "TTbar_SemiLep_115" "TTbar_SemiLep_168" "TTbar_SemiLep_221" "TTbar_SemiLep_274" "TTbar_SemiLep_327" "TTbar_SemiLep_380" "TTbar_SemiLep_433" "TTbar_SemiLep_486" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
