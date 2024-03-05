#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_8" "SingleMuon_Run2016D_23" "SingleMuon_Run2016D_38" "SingleMuon_Run2016D_53" "SingleMuon_Run2016D_68" "SingleMuon_Run2016D_83" "SingleMuon_Run2016D_98" "SingleMuon_Run2016D_113" "SingleMuon_Run2016D_128" "SingleMuon_Run2016D_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
