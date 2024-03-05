#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_3" "TTbarSignal_13" "TTbarSignal_23" "TTbarSignal_33" "TTbarSignal_43" "TTbarSignal_53" "TTbarSignal_63" "TTbarSignal_73" "TTbarSignal_83" "TTbarSignal_93" "TTbarSignal_103" "TTbarSignal_113" "TTbarSignal_123" "TTbarSignal_133" "TTbarSignal_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
