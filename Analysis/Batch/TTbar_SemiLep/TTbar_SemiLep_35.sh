#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_34" "TTbar_SemiLep_87" "TTbar_SemiLep_140" "TTbar_SemiLep_193" "TTbar_SemiLep_246" "TTbar_SemiLep_299" "TTbar_SemiLep_352" "TTbar_SemiLep_405" "TTbar_SemiLep_458" "TTbar_SemiLep_511" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
