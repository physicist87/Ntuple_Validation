#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_25" "TTbar_SemiLep_78" "TTbar_SemiLep_131" "TTbar_SemiLep_184" "TTbar_SemiLep_237" "TTbar_SemiLep_290" "TTbar_SemiLep_343" "TTbar_SemiLep_396" "TTbar_SemiLep_449" "TTbar_SemiLep_502" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
