#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_9" "SingleElectron_Run2016Bv2_36" "SingleElectron_Run2016Bv2_63" "SingleElectron_Run2016Bv2_90" "SingleElectron_Run2016Bv2_117" "SingleElectron_Run2016Bv2_144" "SingleElectron_Run2016Bv2_171" "SingleElectron_Run2016Bv2_198" "SingleElectron_Run2016Bv2_225" "SingleElectron_Run2016Bv2_252" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
