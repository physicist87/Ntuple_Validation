#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_10" "DYJetsToLL_M_50_47" "DYJetsToLL_M_50_84" "DYJetsToLL_M_50_121" "DYJetsToLL_M_50_158" "DYJetsToLL_M_50_195" "DYJetsToLL_M_50_232" "DYJetsToLL_M_50_269" "DYJetsToLL_M_50_306" "DYJetsToLL_M_50_343" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
