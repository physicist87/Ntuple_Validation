#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_4" "TTbar_SemiLep_57" "TTbar_SemiLep_110" "TTbar_SemiLep_163" "TTbar_SemiLep_216" "TTbar_SemiLep_269" "TTbar_SemiLep_322" "TTbar_SemiLep_375" "TTbar_SemiLep_428" "TTbar_SemiLep_481" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
