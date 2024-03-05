#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_10" "DYJetsToLL_M_10To50_31" "DYJetsToLL_M_10To50_52" "DYJetsToLL_M_10To50_73" "DYJetsToLL_M_10To50_94" "DYJetsToLL_M_10To50_115" "DYJetsToLL_M_10To50_136" "DYJetsToLL_M_10To50_157" "DYJetsToLL_M_10To50_178" "DYJetsToLL_M_10To50_199" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
