#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_1" "SingleElectron_Run2016F_e_9" "SingleElectron_Run2016F_e_17" "SingleElectron_Run2016F_e_25" "SingleElectron_Run2016F_e_33" "SingleElectron_Run2016F_e_41" "SingleElectron_Run2016F_e_49" "SingleElectron_Run2016F_e_57" "SingleElectron_Run2016F_e_65" "SingleElectron_Run2016F_e_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
