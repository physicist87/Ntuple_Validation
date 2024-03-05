#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_52" "TTbar_SemiLep_105" "TTbar_SemiLep_158" "TTbar_SemiLep_211" "TTbar_SemiLep_264" "TTbar_SemiLep_317" "TTbar_SemiLep_370" "TTbar_SemiLep_423" "TTbar_SemiLep_476" "TTbar_SemiLep_529" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
