#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_13" "TTbar_SemiLep_66" "TTbar_SemiLep_119" "TTbar_SemiLep_172" "TTbar_SemiLep_225" "TTbar_SemiLep_278" "TTbar_SemiLep_331" "TTbar_SemiLep_384" "TTbar_SemiLep_437" "TTbar_SemiLep_490" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
