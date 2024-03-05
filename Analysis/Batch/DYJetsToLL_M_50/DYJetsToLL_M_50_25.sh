#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_24" "DYJetsToLL_M_50_61" "DYJetsToLL_M_50_98" "DYJetsToLL_M_50_135" "DYJetsToLL_M_50_172" "DYJetsToLL_M_50_209" "DYJetsToLL_M_50_246" "DYJetsToLL_M_50_283" "DYJetsToLL_M_50_320" "DYJetsToLL_M_50_357" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
