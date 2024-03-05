#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_5" "SingleMuon_Run2016E_18" "SingleMuon_Run2016E_31" "SingleMuon_Run2016E_44" "SingleMuon_Run2016E_57" "SingleMuon_Run2016E_70" "SingleMuon_Run2016E_83" "SingleMuon_Run2016E_96" "SingleMuon_Run2016E_109" "SingleMuon_Run2016E_122" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
