#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTbar_AllHadron 
cmsenv 
set inputlists = ("TTbar_AllHadron_39" "TTbar_AllHadron_78" "TTbar_AllHadron_117" "TTbar_AllHadron_156" "TTbar_AllHadron_195" "TTbar_AllHadron_234" "TTbar_AllHadron_273" "TTbar_AllHadron_312" "TTbar_AllHadron_351" "TTbar_AllHadron_390" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTbar_AllHadron 
   ./TopMass_analysis TTbar_AllHadron/${i}.list TTbar_AllHadron/${i}.txt 
end 
