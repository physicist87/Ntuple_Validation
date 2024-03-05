#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_1" "TTbarSignal_11" "TTbarSignal_21" "TTbarSignal_31" "TTbarSignal_41" "TTbarSignal_51" "TTbarSignal_61" "TTbarSignal_71" "TTbarSignal_81" "TTbarSignal_91" "TTbarSignal_101" "TTbarSignal_111" "TTbarSignal_121" "TTbarSignal_131" "TTbarSignal_141" "TTbarSignal_151" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
