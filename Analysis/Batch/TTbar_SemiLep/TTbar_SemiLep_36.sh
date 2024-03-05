#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_35" "TTbar_SemiLep_88" "TTbar_SemiLep_141" "TTbar_SemiLep_194" "TTbar_SemiLep_247" "TTbar_SemiLep_300" "TTbar_SemiLep_353" "TTbar_SemiLep_406" "TTbar_SemiLep_459" "TTbar_SemiLep_512" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
