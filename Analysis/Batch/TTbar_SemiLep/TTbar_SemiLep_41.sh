#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_40" "TTbar_SemiLep_93" "TTbar_SemiLep_146" "TTbar_SemiLep_199" "TTbar_SemiLep_252" "TTbar_SemiLep_305" "TTbar_SemiLep_358" "TTbar_SemiLep_411" "TTbar_SemiLep_464" "TTbar_SemiLep_517" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
