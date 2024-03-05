#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_4" "TTbarSignal_14" "TTbarSignal_24" "TTbarSignal_34" "TTbarSignal_44" "TTbarSignal_54" "TTbarSignal_64" "TTbarSignal_74" "TTbarSignal_84" "TTbarSignal_94" "TTbarSignal_104" "TTbarSignal_114" "TTbarSignal_124" "TTbarSignal_134" "TTbarSignal_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
