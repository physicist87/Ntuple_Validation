#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_28" "TTbar_SemiLep_81" "TTbar_SemiLep_134" "TTbar_SemiLep_187" "TTbar_SemiLep_240" "TTbar_SemiLep_293" "TTbar_SemiLep_346" "TTbar_SemiLep_399" "TTbar_SemiLep_452" "TTbar_SemiLep_505" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
