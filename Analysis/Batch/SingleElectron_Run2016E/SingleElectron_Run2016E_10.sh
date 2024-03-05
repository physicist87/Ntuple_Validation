#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_9" "SingleElectron_Run2016E_22" "SingleElectron_Run2016E_35" "SingleElectron_Run2016E_48" "SingleElectron_Run2016E_61" "SingleElectron_Run2016E_74" "SingleElectron_Run2016E_87" "SingleElectron_Run2016E_100" "SingleElectron_Run2016E_113" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
