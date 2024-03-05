#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_15" "DYJetsToLL_M_50_52" "DYJetsToLL_M_50_89" "DYJetsToLL_M_50_126" "DYJetsToLL_M_50_163" "DYJetsToLL_M_50_200" "DYJetsToLL_M_50_237" "DYJetsToLL_M_50_274" "DYJetsToLL_M_50_311" "DYJetsToLL_M_50_348" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
