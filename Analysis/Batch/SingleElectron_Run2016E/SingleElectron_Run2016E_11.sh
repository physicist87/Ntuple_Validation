#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_10" "SingleElectron_Run2016E_23" "SingleElectron_Run2016E_36" "SingleElectron_Run2016E_49" "SingleElectron_Run2016E_62" "SingleElectron_Run2016E_75" "SingleElectron_Run2016E_88" "SingleElectron_Run2016E_101" "SingleElectron_Run2016E_114" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
