#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_9" "SingleElectron_Run2016D_24" "SingleElectron_Run2016D_39" "SingleElectron_Run2016D_54" "SingleElectron_Run2016D_69" "SingleElectron_Run2016D_84" "SingleElectron_Run2016D_99" "SingleElectron_Run2016D_114" "SingleElectron_Run2016D_129" "SingleElectron_Run2016D_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
