#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_15" "SingleElectron_Run2016Bv2_42" "SingleElectron_Run2016Bv2_69" "SingleElectron_Run2016Bv2_96" "SingleElectron_Run2016Bv2_123" "SingleElectron_Run2016Bv2_150" "SingleElectron_Run2016Bv2_177" "SingleElectron_Run2016Bv2_204" "SingleElectron_Run2016Bv2_231" "SingleElectron_Run2016Bv2_258" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
