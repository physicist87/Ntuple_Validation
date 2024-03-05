#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_15" "SingleElectron_Run2016D_30" "SingleElectron_Run2016D_45" "SingleElectron_Run2016D_60" "SingleElectron_Run2016D_75" "SingleElectron_Run2016D_90" "SingleElectron_Run2016D_105" "SingleElectron_Run2016D_120" "SingleElectron_Run2016D_135" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
