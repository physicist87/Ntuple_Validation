#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_7" "SingleMuon_Run2016E_20" "SingleMuon_Run2016E_33" "SingleMuon_Run2016E_46" "SingleMuon_Run2016E_59" "SingleMuon_Run2016E_72" "SingleMuon_Run2016E_85" "SingleMuon_Run2016E_98" "SingleMuon_Run2016E_111" "SingleMuon_Run2016E_124" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
