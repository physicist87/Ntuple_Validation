#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_9" "TTbarSignal_19" "TTbarSignal_29" "TTbarSignal_39" "TTbarSignal_49" "TTbarSignal_59" "TTbarSignal_69" "TTbarSignal_79" "TTbarSignal_89" "TTbarSignal_99" "TTbarSignal_109" "TTbarSignal_119" "TTbarSignal_129" "TTbarSignal_139" "TTbarSignal_149" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
