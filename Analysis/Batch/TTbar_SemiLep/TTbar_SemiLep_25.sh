#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_24" "TTbar_SemiLep_77" "TTbar_SemiLep_130" "TTbar_SemiLep_183" "TTbar_SemiLep_236" "TTbar_SemiLep_289" "TTbar_SemiLep_342" "TTbar_SemiLep_395" "TTbar_SemiLep_448" "TTbar_SemiLep_501" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
