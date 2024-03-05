#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_5" "SingleElectron_Run2016F_e_13" "SingleElectron_Run2016F_e_21" "SingleElectron_Run2016F_e_29" "SingleElectron_Run2016F_e_37" "SingleElectron_Run2016F_e_45" "SingleElectron_Run2016F_e_53" "SingleElectron_Run2016F_e_61" "SingleElectron_Run2016F_e_69" "SingleElectron_Run2016F_e_77" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
