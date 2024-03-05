#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_7" "TTbar_SemiLep_60" "TTbar_SemiLep_113" "TTbar_SemiLep_166" "TTbar_SemiLep_219" "TTbar_SemiLep_272" "TTbar_SemiLep_325" "TTbar_SemiLep_378" "TTbar_SemiLep_431" "TTbar_SemiLep_484" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
