#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016E 
cmsenv 
set inputlists = ("SingleElectron_Run2016E_7" "SingleElectron_Run2016E_20" "SingleElectron_Run2016E_33" "SingleElectron_Run2016E_46" "SingleElectron_Run2016E_59" "SingleElectron_Run2016E_72" "SingleElectron_Run2016E_85" "SingleElectron_Run2016E_98" "SingleElectron_Run2016E_111" "SingleElectron_Run2016E_124" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016E 
   ./TopMass_analysis SingleElectron_Run2016E/${i}.list SingleElectron_Run2016E/${i}.txt 
end 
