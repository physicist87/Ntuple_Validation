import os
import sys
import subprocess
import argparse
Sample = [
         'WJetsToLNu',
         'WJetsToLNu_Mad',
         'DYJetsToLL_M_50',
         'DYJetsToLL_M_50_Mad',
         'DYJetsToLL_M_10To50',
         'DYJetsToLL_M_10To50_Mad',
         'TTJets_Inclusive',
         'TTbar_Signal',
         'TTbar_SemiLep',
         'TTbar_AllHadron',
         'WZ',
         'WW',
         'ZZ',
         ]
InDir =  [  
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/WJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_WJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-pythia8/240205_165114",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/crab_WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/240205_164011",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/240304_025521",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/240205_160633",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/DYJetsToLL_M-10to50_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_DYJetsToLL_M-10to50_TuneCP5_13TeV-amcatnloFXFX-pythia8/240205_161753",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/crab_DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/240205_162913/",
            ],
            ### TTJet_Inclusive ###
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/crab_TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/240205_152245",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/crab_20240205_143158/240205_053742", # TTbar Signal
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/crab_TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/240205_151003", # TTbar SemiLep
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/TTToHadronic_TuneCP5_13TeV-powheg-pythia8/crab_TTToHadronic_TuneCP5_13TeV-powheg-pythia8/240205_145659", ## TTbar AllHad
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/WW_TuneCP5_13TeV-pythia8/crab_WW_TuneCP5_13TeV-pythia8/240222_060840/", ## ZZ
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/WZ_TuneCP5_13TeV-pythia8/crab_WZ_TuneCP5_13TeV-pythia8/240222_061841/", ## ZZ
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/MC/ZZ_TuneCP5_13TeV-pythia8/crab_ZZ_TuneCP5_13TeV-pythia8/240222_062813/", ## ZZ
            ],

         ]
NumList = [
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          '10', #TTJets_Signal_ISRUp
          #'5', #TTJets_others_ISRUp
          #'10', #TTJets_Signal_ISRDown
          #'5', #TTJets_others_ISRDown
          '', #TTJets_Signal_FSRUp
          '', #TTJets_others_FSRUp
          '', #TTJets_Signal_FSRDown
          '', #TTJets_others_FSRDown
          '', #TTJets_Signal_TuneUp
          '', #TTJets_others_TuneUp
          '', #TTJets_Signal_TuneDown
          '', #TTJets_others_TuneDown
          '', #TTJets_Signal_hdampUp
          '', #TTJets_others_hdampUp
          '', #TTJets_Signal_hdampDown
          '', #TTJets_others_hdampDown
          '', #TTJets_Signal_Herwig
          '', #TTJets_others_Herwig
          '', #TTJets_Signal_erdON
          '', #TTJets_others_erdON
          '', #TTJets_Signal_QCDCRTune
          '', #TTJets_others_QCDCRTune
          '', #TTJets_Signal_GluonMoveCRTune
          '', #TTJets_others_GluonMoveCRTune
          '', #TTJets_Signal_GluonMoveCRTune_erdON
          '', #TTJets_others_GluonMoveCRTune_erdON
          '', #TTJets_Signal_EvtGen
          '', #TTJets_others_EvtGen
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
