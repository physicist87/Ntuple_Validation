#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_6" "DoubleEG_Run2016F_e_14" "DoubleEG_Run2016F_e_22" "DoubleEG_Run2016F_e_30" "DoubleEG_Run2016F_e_38" "DoubleEG_Run2016F_e_46" "DoubleEG_Run2016F_e_54" "DoubleEG_Run2016F_e_62" "DoubleEG_Run2016F_e_70" "DoubleEG_Run2016F_e_78" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
