#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_22" "TTbar_SemiLep_75" "TTbar_SemiLep_128" "TTbar_SemiLep_181" "TTbar_SemiLep_234" "TTbar_SemiLep_287" "TTbar_SemiLep_340" "TTbar_SemiLep_393" "TTbar_SemiLep_446" "TTbar_SemiLep_499" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
