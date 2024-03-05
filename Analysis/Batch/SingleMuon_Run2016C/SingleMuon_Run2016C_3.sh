#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_2" "SingleMuon_Run2016C_11" "SingleMuon_Run2016C_20" "SingleMuon_Run2016C_29" "SingleMuon_Run2016C_38" "SingleMuon_Run2016C_47" "SingleMuon_Run2016C_56" "SingleMuon_Run2016C_65" "SingleMuon_Run2016C_74" "SingleMuon_Run2016C_83" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
