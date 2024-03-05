#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_3" "SingleElectron_Run2016E_16" "SingleElectron_Run2016E_29" "SingleElectron_Run2016E_42" "SingleElectron_Run2016E_55" "SingleElectron_Run2016E_68" "SingleElectron_Run2016E_81" "SingleElectron_Run2016E_94" "SingleElectron_Run2016E_107" "SingleElectron_Run2016E_120" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
