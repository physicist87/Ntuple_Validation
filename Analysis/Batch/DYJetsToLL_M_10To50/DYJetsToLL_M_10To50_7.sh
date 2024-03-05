#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_6" "DYJetsToLL_M_10To50_27" "DYJetsToLL_M_10To50_48" "DYJetsToLL_M_10To50_69" "DYJetsToLL_M_10To50_90" "DYJetsToLL_M_10To50_111" "DYJetsToLL_M_10To50_132" "DYJetsToLL_M_10To50_153" "DYJetsToLL_M_10To50_174" "DYJetsToLL_M_10To50_195" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
