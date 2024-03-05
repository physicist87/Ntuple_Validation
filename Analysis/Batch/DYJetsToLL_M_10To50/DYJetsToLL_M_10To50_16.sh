#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_15" "DYJetsToLL_M_10To50_36" "DYJetsToLL_M_10To50_57" "DYJetsToLL_M_10To50_78" "DYJetsToLL_M_10To50_99" "DYJetsToLL_M_10To50_120" "DYJetsToLL_M_10To50_141" "DYJetsToLL_M_10To50_162" "DYJetsToLL_M_10To50_183" "DYJetsToLL_M_10To50_204" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
