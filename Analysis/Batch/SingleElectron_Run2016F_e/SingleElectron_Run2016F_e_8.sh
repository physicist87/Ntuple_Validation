#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_7" "SingleElectron_Run2016F_e_15" "SingleElectron_Run2016F_e_23" "SingleElectron_Run2016F_e_31" "SingleElectron_Run2016F_e_39" "SingleElectron_Run2016F_e_47" "SingleElectron_Run2016F_e_55" "SingleElectron_Run2016F_e_63" "SingleElectron_Run2016F_e_71" "SingleElectron_Run2016F_e_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
