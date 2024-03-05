#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_8" "SingleElectron_Run2016D_23" "SingleElectron_Run2016D_38" "SingleElectron_Run2016D_53" "SingleElectron_Run2016D_68" "SingleElectron_Run2016D_83" "SingleElectron_Run2016D_98" "SingleElectron_Run2016D_113" "SingleElectron_Run2016D_128" "SingleElectron_Run2016D_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
