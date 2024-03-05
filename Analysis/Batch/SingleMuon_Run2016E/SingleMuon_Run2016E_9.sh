#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_8" "SingleMuon_Run2016E_21" "SingleMuon_Run2016E_34" "SingleMuon_Run2016E_47" "SingleMuon_Run2016E_60" "SingleMuon_Run2016E_73" "SingleMuon_Run2016E_86" "SingleMuon_Run2016E_99" "SingleMuon_Run2016E_112" "SingleMuon_Run2016E_125" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
