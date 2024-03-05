#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_14" "SingleMuon_Run2016D_29" "SingleMuon_Run2016D_44" "SingleMuon_Run2016D_59" "SingleMuon_Run2016D_74" "SingleMuon_Run2016D_89" "SingleMuon_Run2016D_104" "SingleMuon_Run2016D_119" "SingleMuon_Run2016D_134" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
