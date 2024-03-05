#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_6" "SingleElectron_Run2016C_15" "SingleElectron_Run2016C_24" "SingleElectron_Run2016C_33" "SingleElectron_Run2016C_42" "SingleElectron_Run2016C_51" "SingleElectron_Run2016C_60" "SingleElectron_Run2016C_69" "SingleElectron_Run2016C_78" "SingleElectron_Run2016C_87" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
