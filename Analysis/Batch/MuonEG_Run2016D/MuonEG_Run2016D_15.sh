#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016D 
cmsenv 
set inputlists = ("MuonEG_Run2016D_14" "MuonEG_Run2016D_29" "MuonEG_Run2016D_44" "MuonEG_Run2016D_59" "MuonEG_Run2016D_74" "MuonEG_Run2016D_89" "MuonEG_Run2016D_104" "MuonEG_Run2016D_119" "MuonEG_Run2016D_134" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016D 
   ./TopMass_analysis MuonEG_Run2016D/${i}.list MuonEG_Run2016D/${i}.txt 
end 
