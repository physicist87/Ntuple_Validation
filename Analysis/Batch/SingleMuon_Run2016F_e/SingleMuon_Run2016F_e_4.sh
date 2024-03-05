#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_3" "SingleMuon_Run2016F_e_11" "SingleMuon_Run2016F_e_19" "SingleMuon_Run2016F_e_27" "SingleMuon_Run2016F_e_35" "SingleMuon_Run2016F_e_43" "SingleMuon_Run2016F_e_51" "SingleMuon_Run2016F_e_59" "SingleMuon_Run2016F_e_67" "SingleMuon_Run2016F_e_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
