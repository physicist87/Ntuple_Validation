#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_8" "SingleElectron_Run2016E_21" "SingleElectron_Run2016E_34" "SingleElectron_Run2016E_47" "SingleElectron_Run2016E_60" "SingleElectron_Run2016E_73" "SingleElectron_Run2016E_86" "SingleElectron_Run2016E_99" "SingleElectron_Run2016E_112" "SingleElectron_Run2016E_125" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
