#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_2" "TTbar_SemiLep_55" "TTbar_SemiLep_108" "TTbar_SemiLep_161" "TTbar_SemiLep_214" "TTbar_SemiLep_267" "TTbar_SemiLep_320" "TTbar_SemiLep_373" "TTbar_SemiLep_426" "TTbar_SemiLep_479" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
