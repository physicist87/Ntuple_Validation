#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_10" "SingleElectron_Run2016Bv2_37" "SingleElectron_Run2016Bv2_64" "SingleElectron_Run2016Bv2_91" "SingleElectron_Run2016Bv2_118" "SingleElectron_Run2016Bv2_145" "SingleElectron_Run2016Bv2_172" "SingleElectron_Run2016Bv2_199" "SingleElectron_Run2016Bv2_226" "SingleElectron_Run2016Bv2_253" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
