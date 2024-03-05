#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_13" "SingleElectron_Run2016E_26" "SingleElectron_Run2016E_39" "SingleElectron_Run2016E_52" "SingleElectron_Run2016E_65" "SingleElectron_Run2016E_78" "SingleElectron_Run2016E_91" "SingleElectron_Run2016E_104" "SingleElectron_Run2016E_117" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
