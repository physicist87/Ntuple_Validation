#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016F_e 
cmsenv 
set inputlists = ("SingleElectron_Run2016F_e_3" "SingleElectron_Run2016F_e_11" "SingleElectron_Run2016F_e_19" "SingleElectron_Run2016F_e_27" "SingleElectron_Run2016F_e_35" "SingleElectron_Run2016F_e_43" "SingleElectron_Run2016F_e_51" "SingleElectron_Run2016F_e_59" "SingleElectron_Run2016F_e_67" "SingleElectron_Run2016F_e_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016F_e 
   ./TopMass_analysis SingleElectron_Run2016F_e/${i}.list SingleElectron_Run2016F_e/${i}.txt 
end 
