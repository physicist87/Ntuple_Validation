#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_5" "TTbarSignal_15" "TTbarSignal_25" "TTbarSignal_35" "TTbarSignal_45" "TTbarSignal_55" "TTbarSignal_65" "TTbarSignal_75" "TTbarSignal_85" "TTbarSignal_95" "TTbarSignal_105" "TTbarSignal_115" "TTbarSignal_125" "TTbarSignal_135" "TTbarSignal_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
