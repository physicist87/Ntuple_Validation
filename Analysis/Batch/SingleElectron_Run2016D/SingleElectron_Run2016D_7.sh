#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_6" "SingleElectron_Run2016D_21" "SingleElectron_Run2016D_36" "SingleElectron_Run2016D_51" "SingleElectron_Run2016D_66" "SingleElectron_Run2016D_81" "SingleElectron_Run2016D_96" "SingleElectron_Run2016D_111" "SingleElectron_Run2016D_126" "SingleElectron_Run2016D_141" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
