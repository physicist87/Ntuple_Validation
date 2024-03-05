#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_4" "SingleElectron_Run2016E_17" "SingleElectron_Run2016E_30" "SingleElectron_Run2016E_43" "SingleElectron_Run2016E_56" "SingleElectron_Run2016E_69" "SingleElectron_Run2016E_82" "SingleElectron_Run2016E_95" "SingleElectron_Run2016E_108" "SingleElectron_Run2016E_121" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
