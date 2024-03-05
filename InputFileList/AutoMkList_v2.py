import os
import sys
import subprocess
import argparse
Sample = [
         'SingleNeutrino_Flat2018',
         'SingleNeutrino_Flat2018_HEM',
         ]
InDir =  [  
            [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/JERNosieStudy/SingleNeutrino/SingleNeutrino/crab_SingleNeutrino_UL18_FlatPU0to70_v10/211211_045719",
            ],
            [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/JERNosieStudy/SingleNeutrino/SingleNeutrino/crab_SingleNeutrino_UL18_FlatPU0to70_HEM_v10/211211_045814",
            ],
         ]
NumList = [
          '10', #WJetsToLNu
          '5', #WJetsToLNu
          ]
for Nlist , samplename in enumerate( Sample ):
    iInDir = ""
    for iidir in InDir[Nlist]:
        iInDir += iidir
        iInDir += " "  
        pass
    cmd = 'python MkList_3.py --InDir %s --OutName %s --NumList %s --Isgsidcap \"False\" --OtherUser \"True\" ' %(iInDir,samplename,NumList[Nlist])
    print cmd
    os.system(cmd)
    print '\\' 
    pass
print "Finish!!!!"
