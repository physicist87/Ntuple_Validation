#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_30" "TTbar_SemiLep_83" "TTbar_SemiLep_136" "TTbar_SemiLep_189" "TTbar_SemiLep_242" "TTbar_SemiLep_295" "TTbar_SemiLep_348" "TTbar_SemiLep_401" "TTbar_SemiLep_454" "TTbar_SemiLep_507" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
