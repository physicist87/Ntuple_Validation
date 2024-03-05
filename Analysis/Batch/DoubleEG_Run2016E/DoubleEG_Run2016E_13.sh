#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_12" "DoubleEG_Run2016E_25" "DoubleEG_Run2016E_38" "DoubleEG_Run2016E_51" "DoubleEG_Run2016E_64" "DoubleEG_Run2016E_77" "DoubleEG_Run2016E_90" "DoubleEG_Run2016E_103" "DoubleEG_Run2016E_116" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
