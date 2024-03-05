#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_4" "SingleElectron_Run2016C_13" "SingleElectron_Run2016C_22" "SingleElectron_Run2016C_31" "SingleElectron_Run2016C_40" "SingleElectron_Run2016C_49" "SingleElectron_Run2016C_58" "SingleElectron_Run2016C_67" "SingleElectron_Run2016C_76" "SingleElectron_Run2016C_85" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
