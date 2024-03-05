#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_11" "TTbar_SemiLep_64" "TTbar_SemiLep_117" "TTbar_SemiLep_170" "TTbar_SemiLep_223" "TTbar_SemiLep_276" "TTbar_SemiLep_329" "TTbar_SemiLep_382" "TTbar_SemiLep_435" "TTbar_SemiLep_488" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
