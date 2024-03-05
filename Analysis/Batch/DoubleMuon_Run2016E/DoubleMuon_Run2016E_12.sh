#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_11" "DoubleMuon_Run2016E_24" "DoubleMuon_Run2016E_37" "DoubleMuon_Run2016E_50" "DoubleMuon_Run2016E_63" "DoubleMuon_Run2016E_76" "DoubleMuon_Run2016E_89" "DoubleMuon_Run2016E_102" "DoubleMuon_Run2016E_115" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
