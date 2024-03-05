#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_38" "TTbar_SemiLep_91" "TTbar_SemiLep_144" "TTbar_SemiLep_197" "TTbar_SemiLep_250" "TTbar_SemiLep_303" "TTbar_SemiLep_356" "TTbar_SemiLep_409" "TTbar_SemiLep_462" "TTbar_SemiLep_515" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
