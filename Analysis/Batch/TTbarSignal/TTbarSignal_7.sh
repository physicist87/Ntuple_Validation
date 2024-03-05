#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_6" "TTbarSignal_16" "TTbarSignal_26" "TTbarSignal_36" "TTbarSignal_46" "TTbarSignal_56" "TTbarSignal_66" "TTbarSignal_76" "TTbarSignal_86" "TTbarSignal_96" "TTbarSignal_106" "TTbarSignal_116" "TTbarSignal_126" "TTbarSignal_136" "TTbarSignal_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
