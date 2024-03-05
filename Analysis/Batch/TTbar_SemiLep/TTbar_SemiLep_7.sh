#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_6" "TTbar_SemiLep_59" "TTbar_SemiLep_112" "TTbar_SemiLep_165" "TTbar_SemiLep_218" "TTbar_SemiLep_271" "TTbar_SemiLep_324" "TTbar_SemiLep_377" "TTbar_SemiLep_430" "TTbar_SemiLep_483" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
