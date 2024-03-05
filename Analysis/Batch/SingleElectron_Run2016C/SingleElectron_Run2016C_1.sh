#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_9" "SingleElectron_Run2016C_18" "SingleElectron_Run2016C_27" "SingleElectron_Run2016C_36" "SingleElectron_Run2016C_45" "SingleElectron_Run2016C_54" "SingleElectron_Run2016C_63" "SingleElectron_Run2016C_72" "SingleElectron_Run2016C_81" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
