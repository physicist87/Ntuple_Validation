#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_6" "SingleElectron_Run2016F_e_14" "SingleElectron_Run2016F_e_22" "SingleElectron_Run2016F_e_30" "SingleElectron_Run2016F_e_38" "SingleElectron_Run2016F_e_46" "SingleElectron_Run2016F_e_54" "SingleElectron_Run2016F_e_62" "SingleElectron_Run2016F_e_70" "SingleElectron_Run2016F_e_78" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
