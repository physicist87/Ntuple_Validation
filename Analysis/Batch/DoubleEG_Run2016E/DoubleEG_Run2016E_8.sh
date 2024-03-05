#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016E 
cmsenv 
set inputlists = ("DoubleEG_Run2016E_7" "DoubleEG_Run2016E_20" "DoubleEG_Run2016E_33" "DoubleEG_Run2016E_46" "DoubleEG_Run2016E_59" "DoubleEG_Run2016E_72" "DoubleEG_Run2016E_85" "DoubleEG_Run2016E_98" "DoubleEG_Run2016E_111" "DoubleEG_Run2016E_124" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016E 
   ./TopMass_analysis DoubleEG_Run2016E/${i}.list DoubleEG_Run2016E/${i}.txt 
end 
