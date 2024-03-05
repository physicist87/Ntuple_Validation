#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_14" "SingleElectron_Run2016D_29" "SingleElectron_Run2016D_44" "SingleElectron_Run2016D_59" "SingleElectron_Run2016D_74" "SingleElectron_Run2016D_89" "SingleElectron_Run2016D_104" "SingleElectron_Run2016D_119" "SingleElectron_Run2016D_134" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
