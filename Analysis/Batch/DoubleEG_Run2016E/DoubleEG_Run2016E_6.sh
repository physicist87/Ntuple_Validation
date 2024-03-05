#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_5" "DoubleEG_Run2016E_18" "DoubleEG_Run2016E_31" "DoubleEG_Run2016E_44" "DoubleEG_Run2016E_57" "DoubleEG_Run2016E_70" "DoubleEG_Run2016E_83" "DoubleEG_Run2016E_96" "DoubleEG_Run2016E_109" "DoubleEG_Run2016E_122" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
