#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_5" "DYJetsToLL_M_10To50_26" "DYJetsToLL_M_10To50_47" "DYJetsToLL_M_10To50_68" "DYJetsToLL_M_10To50_89" "DYJetsToLL_M_10To50_110" "DYJetsToLL_M_10To50_131" "DYJetsToLL_M_10To50_152" "DYJetsToLL_M_10To50_173" "DYJetsToLL_M_10To50_194" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
