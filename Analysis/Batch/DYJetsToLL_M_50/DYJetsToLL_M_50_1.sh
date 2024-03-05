#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_37" "DYJetsToLL_M_50_74" "DYJetsToLL_M_50_111" "DYJetsToLL_M_50_148" "DYJetsToLL_M_50_185" "DYJetsToLL_M_50_222" "DYJetsToLL_M_50_259" "DYJetsToLL_M_50_296" "DYJetsToLL_M_50_333" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
