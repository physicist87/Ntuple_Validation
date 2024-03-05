#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_14" "DoubleMuon_Run2016D_29" "DoubleMuon_Run2016D_44" "DoubleMuon_Run2016D_59" "DoubleMuon_Run2016D_74" "DoubleMuon_Run2016D_89" "DoubleMuon_Run2016D_104" "DoubleMuon_Run2016D_119" "DoubleMuon_Run2016D_134" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
