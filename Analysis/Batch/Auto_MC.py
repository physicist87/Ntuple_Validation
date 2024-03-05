import os
import sys
import subprocess

Sample = [
          #'TTbar_Powheg',
          #'TTJets_Signal_Herwig',
          'TTJets_Signal_New',
          'TTJets_Signal_Old',

         ]
NumList = [
          '621', # TTJets_Signal 
          '621', # TTJets_Signal 
          #'238', # TTJets_Signal 
          ]
NumJobs = [
          #'621', # TTJets_Signal 
          '62', # TTJets_Signal 
          '62', # TTJets_Signal 
          ]
for Nlist , samplename in enumerate( Sample ):
    cmd = 'python run_arg.py --NumJobs %s --InSample %s --NumFileList %s' %(NumJobs[Nlist],samplename,NumList[Nlist])
    print cmd
    os.system(cmd)
    pass
print "Finish!!!!"
#python run_arg.py --NumJobs 207 --InSample TTJets_Signal
