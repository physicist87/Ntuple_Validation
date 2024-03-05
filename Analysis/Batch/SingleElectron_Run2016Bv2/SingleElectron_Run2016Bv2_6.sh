#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_5" "SingleElectron_Run2016Bv2_32" "SingleElectron_Run2016Bv2_59" "SingleElectron_Run2016Bv2_86" "SingleElectron_Run2016Bv2_113" "SingleElectron_Run2016Bv2_140" "SingleElectron_Run2016Bv2_167" "SingleElectron_Run2016Bv2_194" "SingleElectron_Run2016Bv2_221" "SingleElectron_Run2016Bv2_248" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
