#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_2" "SingleElectron_Run2016D_17" "SingleElectron_Run2016D_32" "SingleElectron_Run2016D_47" "SingleElectron_Run2016D_62" "SingleElectron_Run2016D_77" "SingleElectron_Run2016D_92" "SingleElectron_Run2016D_107" "SingleElectron_Run2016D_122" "SingleElectron_Run2016D_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
