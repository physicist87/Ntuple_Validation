#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_36" "TTbar_SemiLep_89" "TTbar_SemiLep_142" "TTbar_SemiLep_195" "TTbar_SemiLep_248" "TTbar_SemiLep_301" "TTbar_SemiLep_354" "TTbar_SemiLep_407" "TTbar_SemiLep_460" "TTbar_SemiLep_513" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
