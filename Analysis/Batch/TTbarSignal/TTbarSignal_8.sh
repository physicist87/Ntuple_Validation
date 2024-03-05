#!/bin/tcsh 
setenv SCRAM_ARCH slc6_amd64_gcc530 
source /cvmfs/cms.cern.ch/cmsset_default.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbarSignal 
cmsenv 
set inputlists = ("TTbarSignal_7" "TTbarSignal_17" "TTbarSignal_27" "TTbarSignal_37" "TTbarSignal_47" "TTbarSignal_57" "TTbarSignal_67" "TTbarSignal_77" "TTbarSignal_87" "TTbarSignal_97" "TTbarSignal_107" "TTbarSignal_117" "TTbarSignal_127" "TTbarSignal_137" "TTbarSignal_147" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbarSignal 
   ./TopMass_analysis TTbarSignal/${i}.list TTbarSignal/${i}.txt 
end 
