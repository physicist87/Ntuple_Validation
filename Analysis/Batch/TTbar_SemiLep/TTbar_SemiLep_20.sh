#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_SemiLep 
cmsenv 
set inputlists = ("TTbar_SemiLep_19" "TTbar_SemiLep_72" "TTbar_SemiLep_125" "TTbar_SemiLep_178" "TTbar_SemiLep_231" "TTbar_SemiLep_284" "TTbar_SemiLep_337" "TTbar_SemiLep_390" "TTbar_SemiLep_443" "TTbar_SemiLep_496" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_SemiLep 
   ./TopMass_analysis TTbar_SemiLep/${i}.list TTbar_SemiLep/${i}.txt 
end 
