#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_46" "TTbar_SemiLep_99" "TTbar_SemiLep_152" "TTbar_SemiLep_205" "TTbar_SemiLep_258" "TTbar_SemiLep_311" "TTbar_SemiLep_364" "TTbar_SemiLep_417" "TTbar_SemiLep_470" "TTbar_SemiLep_523" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
