#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_11" "SingleElectron_Run2016E_24" "SingleElectron_Run2016E_37" "SingleElectron_Run2016E_50" "SingleElectron_Run2016E_63" "SingleElectron_Run2016E_76" "SingleElectron_Run2016E_89" "SingleElectron_Run2016E_102" "SingleElectron_Run2016E_115" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
