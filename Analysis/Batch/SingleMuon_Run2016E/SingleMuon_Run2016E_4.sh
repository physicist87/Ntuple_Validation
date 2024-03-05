#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_3" "SingleMuon_Run2016E_16" "SingleMuon_Run2016E_29" "SingleMuon_Run2016E_42" "SingleMuon_Run2016E_55" "SingleMuon_Run2016E_68" "SingleMuon_Run2016E_81" "SingleMuon_Run2016E_94" "SingleMuon_Run2016E_107" "SingleMuon_Run2016E_120" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
