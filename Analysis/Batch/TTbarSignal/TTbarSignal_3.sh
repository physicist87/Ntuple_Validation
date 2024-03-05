#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_2" "TTbarSignal_12" "TTbarSignal_22" "TTbarSignal_32" "TTbarSignal_42" "TTbarSignal_52" "TTbarSignal_62" "TTbarSignal_72" "TTbarSignal_82" "TTbarSignal_92" "TTbarSignal_102" "TTbarSignal_112" "TTbarSignal_122" "TTbarSignal_132" "TTbarSignal_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
