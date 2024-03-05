#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_6" "SingleMuon_Run2016D_21" "SingleMuon_Run2016D_36" "SingleMuon_Run2016D_51" "SingleMuon_Run2016D_66" "SingleMuon_Run2016D_81" "SingleMuon_Run2016D_96" "SingleMuon_Run2016D_111" "SingleMuon_Run2016D_126" "SingleMuon_Run2016D_141" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
