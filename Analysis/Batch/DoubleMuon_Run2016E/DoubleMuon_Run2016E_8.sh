#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_7" "DoubleMuon_Run2016E_20" "DoubleMuon_Run2016E_33" "DoubleMuon_Run2016E_46" "DoubleMuon_Run2016E_59" "DoubleMuon_Run2016E_72" "DoubleMuon_Run2016E_85" "DoubleMuon_Run2016E_98" "DoubleMuon_Run2016E_111" "DoubleMuon_Run2016E_124" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
