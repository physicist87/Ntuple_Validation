#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_10" "TTbarSignal_20" "TTbarSignal_30" "TTbarSignal_40" "TTbarSignal_50" "TTbarSignal_60" "TTbarSignal_70" "TTbarSignal_80" "TTbarSignal_90" "TTbarSignal_100" "TTbarSignal_110" "TTbarSignal_120" "TTbarSignal_130" "TTbarSignal_140" "TTbarSignal_150" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
