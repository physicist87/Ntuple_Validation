#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_29" "TTbar_SemiLep_82" "TTbar_SemiLep_135" "TTbar_SemiLep_188" "TTbar_SemiLep_241" "TTbar_SemiLep_294" "TTbar_SemiLep_347" "TTbar_SemiLep_400" "TTbar_SemiLep_453" "TTbar_SemiLep_506" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
