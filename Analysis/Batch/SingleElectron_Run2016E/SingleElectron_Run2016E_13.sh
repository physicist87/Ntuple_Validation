#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_12" "SingleElectron_Run2016E_25" "SingleElectron_Run2016E_38" "SingleElectron_Run2016E_51" "SingleElectron_Run2016E_64" "SingleElectron_Run2016E_77" "SingleElectron_Run2016E_90" "SingleElectron_Run2016E_103" "SingleElectron_Run2016E_116" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
