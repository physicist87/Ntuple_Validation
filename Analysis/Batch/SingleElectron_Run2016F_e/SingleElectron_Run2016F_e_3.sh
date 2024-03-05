#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_2" "SingleElectron_Run2016F_e_10" "SingleElectron_Run2016F_e_18" "SingleElectron_Run2016F_e_26" "SingleElectron_Run2016F_e_34" "SingleElectron_Run2016F_e_42" "SingleElectron_Run2016F_e_50" "SingleElectron_Run2016F_e_58" "SingleElectron_Run2016F_e_66" "SingleElectron_Run2016F_e_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
