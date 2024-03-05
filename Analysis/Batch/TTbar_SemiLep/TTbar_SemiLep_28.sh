#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_27" "TTbar_SemiLep_80" "TTbar_SemiLep_133" "TTbar_SemiLep_186" "TTbar_SemiLep_239" "TTbar_SemiLep_292" "TTbar_SemiLep_345" "TTbar_SemiLep_398" "TTbar_SemiLep_451" "TTbar_SemiLep_504" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
