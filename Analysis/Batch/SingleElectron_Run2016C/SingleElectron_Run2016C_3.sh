#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_2" "SingleElectron_Run2016C_11" "SingleElectron_Run2016C_20" "SingleElectron_Run2016C_29" "SingleElectron_Run2016C_38" "SingleElectron_Run2016C_47" "SingleElectron_Run2016C_56" "SingleElectron_Run2016C_65" "SingleElectron_Run2016C_74" "SingleElectron_Run2016C_83" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
