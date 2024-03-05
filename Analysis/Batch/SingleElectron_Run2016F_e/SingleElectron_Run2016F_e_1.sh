#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_8" "SingleElectron_Run2016F_e_16" "SingleElectron_Run2016F_e_24" "SingleElectron_Run2016F_e_32" "SingleElectron_Run2016F_e_40" "SingleElectron_Run2016F_e_48" "SingleElectron_Run2016F_e_56" "SingleElectron_Run2016F_e_64" "SingleElectron_Run2016F_e_72" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
