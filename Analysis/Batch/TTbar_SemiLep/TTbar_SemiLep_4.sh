#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_3" "TTbar_SemiLep_56" "TTbar_SemiLep_109" "TTbar_SemiLep_162" "TTbar_SemiLep_215" "TTbar_SemiLep_268" "TTbar_SemiLep_321" "TTbar_SemiLep_374" "TTbar_SemiLep_427" "TTbar_SemiLep_480" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
