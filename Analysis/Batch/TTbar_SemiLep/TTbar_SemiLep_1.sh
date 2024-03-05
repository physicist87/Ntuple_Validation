#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_53" "TTbar_SemiLep_106" "TTbar_SemiLep_159" "TTbar_SemiLep_212" "TTbar_SemiLep_265" "TTbar_SemiLep_318" "TTbar_SemiLep_371" "TTbar_SemiLep_424" "TTbar_SemiLep_477" "TTbar_SemiLep_530" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
