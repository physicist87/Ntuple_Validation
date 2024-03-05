#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_6" "SingleElectron_Run2016E_19" "SingleElectron_Run2016E_32" "SingleElectron_Run2016E_45" "SingleElectron_Run2016E_58" "SingleElectron_Run2016E_71" "SingleElectron_Run2016E_84" "SingleElectron_Run2016E_97" "SingleElectron_Run2016E_110" "SingleElectron_Run2016E_123" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
