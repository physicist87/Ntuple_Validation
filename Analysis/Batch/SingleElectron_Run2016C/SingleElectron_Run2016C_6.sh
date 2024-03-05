#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_5" "SingleElectron_Run2016C_14" "SingleElectron_Run2016C_23" "SingleElectron_Run2016C_32" "SingleElectron_Run2016C_41" "SingleElectron_Run2016C_50" "SingleElectron_Run2016C_59" "SingleElectron_Run2016C_68" "SingleElectron_Run2016C_77" "SingleElectron_Run2016C_86" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
