#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_27" "SingleElectron_Run2016Bv2_54" "SingleElectron_Run2016Bv2_81" "SingleElectron_Run2016Bv2_108" "SingleElectron_Run2016Bv2_135" "SingleElectron_Run2016Bv2_162" "SingleElectron_Run2016Bv2_189" "SingleElectron_Run2016Bv2_216" "SingleElectron_Run2016Bv2_243" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
