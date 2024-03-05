#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_11" "SingleMuon_Run2016E_24" "SingleMuon_Run2016E_37" "SingleMuon_Run2016E_50" "SingleMuon_Run2016E_63" "SingleMuon_Run2016E_76" "SingleMuon_Run2016E_89" "SingleMuon_Run2016E_102" "SingleMuon_Run2016E_115" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
