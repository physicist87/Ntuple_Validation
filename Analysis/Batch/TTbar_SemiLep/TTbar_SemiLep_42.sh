#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_41" "TTbar_SemiLep_94" "TTbar_SemiLep_147" "TTbar_SemiLep_200" "TTbar_SemiLep_253" "TTbar_SemiLep_306" "TTbar_SemiLep_359" "TTbar_SemiLep_412" "TTbar_SemiLep_465" "TTbar_SemiLep_518" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
