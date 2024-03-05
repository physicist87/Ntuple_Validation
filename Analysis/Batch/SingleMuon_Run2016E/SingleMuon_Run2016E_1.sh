#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_13" "SingleMuon_Run2016E_26" "SingleMuon_Run2016E_39" "SingleMuon_Run2016E_52" "SingleMuon_Run2016E_65" "SingleMuon_Run2016E_78" "SingleMuon_Run2016E_91" "SingleMuon_Run2016E_104" "SingleMuon_Run2016E_117" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
