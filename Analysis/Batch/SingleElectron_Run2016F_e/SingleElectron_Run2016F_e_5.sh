#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_4" "SingleElectron_Run2016F_e_12" "SingleElectron_Run2016F_e_20" "SingleElectron_Run2016F_e_28" "SingleElectron_Run2016F_e_36" "SingleElectron_Run2016F_e_44" "SingleElectron_Run2016F_e_52" "SingleElectron_Run2016F_e_60" "SingleElectron_Run2016F_e_68" "SingleElectron_Run2016F_e_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
