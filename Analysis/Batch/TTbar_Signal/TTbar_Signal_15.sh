#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_Signal 
cmsenv 
set inputlists = ("TTbar_Signal_14" "TTbar_Signal_29" "TTbar_Signal_44" "TTbar_Signal_59" "TTbar_Signal_74" "TTbar_Signal_89" "TTbar_Signal_104" "TTbar_Signal_119" "TTbar_Signal_134" "TTbar_Signal_149" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_Signal 
   ./TopMass_analysis TTbar_Signal/${i}.list TTbar_Signal/${i}.txt 
end 
