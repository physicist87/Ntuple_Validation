#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_1" "DoubleEG_Run2016F_e_9" "DoubleEG_Run2016F_e_17" "DoubleEG_Run2016F_e_25" "DoubleEG_Run2016F_e_33" "DoubleEG_Run2016F_e_41" "DoubleEG_Run2016F_e_49" "DoubleEG_Run2016F_e_57" "DoubleEG_Run2016F_e_65" "DoubleEG_Run2016F_e_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
