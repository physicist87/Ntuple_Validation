#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_3" "DoubleEG_Run2016F_e_11" "DoubleEG_Run2016F_e_19" "DoubleEG_Run2016F_e_27" "DoubleEG_Run2016F_e_35" "DoubleEG_Run2016F_e_43" "DoubleEG_Run2016F_e_51" "DoubleEG_Run2016F_e_59" "DoubleEG_Run2016F_e_67" "DoubleEG_Run2016F_e_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
