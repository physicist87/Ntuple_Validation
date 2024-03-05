#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_13" "SingleElectron_Run2016Bv2_40" "SingleElectron_Run2016Bv2_67" "SingleElectron_Run2016Bv2_94" "SingleElectron_Run2016Bv2_121" "SingleElectron_Run2016Bv2_148" "SingleElectron_Run2016Bv2_175" "SingleElectron_Run2016Bv2_202" "SingleElectron_Run2016Bv2_229" "SingleElectron_Run2016Bv2_256" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
