#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_2" "SingleElectron_Run2016E_15" "SingleElectron_Run2016E_28" "SingleElectron_Run2016E_41" "SingleElectron_Run2016E_54" "SingleElectron_Run2016E_67" "SingleElectron_Run2016E_80" "SingleElectron_Run2016E_93" "SingleElectron_Run2016E_106" "SingleElectron_Run2016E_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
