#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_7" "DoubleEG_Run2016F_e_15" "DoubleEG_Run2016F_e_23" "DoubleEG_Run2016F_e_31" "DoubleEG_Run2016F_e_39" "DoubleEG_Run2016F_e_47" "DoubleEG_Run2016F_e_55" "DoubleEG_Run2016F_e_63" "DoubleEG_Run2016F_e_71" "DoubleEG_Run2016F_e_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
