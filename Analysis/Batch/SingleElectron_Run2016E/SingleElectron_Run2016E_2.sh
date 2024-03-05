#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_1" "SingleElectron_Run2016E_14" "SingleElectron_Run2016E_27" "SingleElectron_Run2016E_40" "SingleElectron_Run2016E_53" "SingleElectron_Run2016E_66" "SingleElectron_Run2016E_79" "SingleElectron_Run2016E_92" "SingleElectron_Run2016E_105" "SingleElectron_Run2016E_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
