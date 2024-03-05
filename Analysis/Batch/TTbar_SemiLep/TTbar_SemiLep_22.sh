#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_21" "TTbar_SemiLep_74" "TTbar_SemiLep_127" "TTbar_SemiLep_180" "TTbar_SemiLep_233" "TTbar_SemiLep_286" "TTbar_SemiLep_339" "TTbar_SemiLep_392" "TTbar_SemiLep_445" "TTbar_SemiLep_498" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
