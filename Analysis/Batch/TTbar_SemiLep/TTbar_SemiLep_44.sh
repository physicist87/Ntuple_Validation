#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_43" "TTbar_SemiLep_96" "TTbar_SemiLep_149" "TTbar_SemiLep_202" "TTbar_SemiLep_255" "TTbar_SemiLep_308" "TTbar_SemiLep_361" "TTbar_SemiLep_414" "TTbar_SemiLep_467" "TTbar_SemiLep_520" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
