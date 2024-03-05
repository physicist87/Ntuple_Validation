#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_5" "DoubleMuon_Run2016E_18" "DoubleMuon_Run2016E_31" "DoubleMuon_Run2016E_44" "DoubleMuon_Run2016E_57" "DoubleMuon_Run2016E_70" "DoubleMuon_Run2016E_83" "DoubleMuon_Run2016E_96" "DoubleMuon_Run2016E_109" "DoubleMuon_Run2016E_122" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
