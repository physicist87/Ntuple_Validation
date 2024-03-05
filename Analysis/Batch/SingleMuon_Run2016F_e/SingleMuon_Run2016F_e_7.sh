#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_6" "SingleMuon_Run2016F_e_14" "SingleMuon_Run2016F_e_22" "SingleMuon_Run2016F_e_30" "SingleMuon_Run2016F_e_38" "SingleMuon_Run2016F_e_46" "SingleMuon_Run2016F_e_54" "SingleMuon_Run2016F_e_62" "SingleMuon_Run2016F_e_70" "SingleMuon_Run2016F_e_78" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
