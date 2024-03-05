#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_4" "DoubleEG_Run2016F_e_12" "DoubleEG_Run2016F_e_20" "DoubleEG_Run2016F_e_28" "DoubleEG_Run2016F_e_36" "DoubleEG_Run2016F_e_44" "DoubleEG_Run2016F_e_52" "DoubleEG_Run2016F_e_60" "DoubleEG_Run2016F_e_68" "DoubleEG_Run2016F_e_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
