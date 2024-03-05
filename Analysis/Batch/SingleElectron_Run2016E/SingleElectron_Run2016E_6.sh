#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_5" "SingleElectron_Run2016E_18" "SingleElectron_Run2016E_31" "SingleElectron_Run2016E_44" "SingleElectron_Run2016E_57" "SingleElectron_Run2016E_70" "SingleElectron_Run2016E_83" "SingleElectron_Run2016E_96" "SingleElectron_Run2016E_109" "SingleElectron_Run2016E_122" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
