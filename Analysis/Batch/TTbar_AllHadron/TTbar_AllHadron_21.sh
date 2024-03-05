#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_20" "TTbar_AllHadron_59" "TTbar_AllHadron_98" "TTbar_AllHadron_137" "TTbar_AllHadron_176" "TTbar_AllHadron_215" "TTbar_AllHadron_254" "TTbar_AllHadron_293" "TTbar_AllHadron_332" "TTbar_AllHadron_371" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
