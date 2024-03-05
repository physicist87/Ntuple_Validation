#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_8" "TTbarSignal_18" "TTbarSignal_28" "TTbarSignal_38" "TTbarSignal_48" "TTbarSignal_58" "TTbarSignal_68" "TTbarSignal_78" "TTbarSignal_88" "TTbarSignal_98" "TTbarSignal_108" "TTbarSignal_118" "TTbarSignal_128" "TTbarSignal_138" "TTbarSignal_148" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
