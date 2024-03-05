import os
import sys
import subprocess
import argparse
Sample = [
         'DoubleMuon_Run2016Bv2',
         'DoubleMuon_Run2016C',
         'DoubleMuon_Run2016D',
         'DoubleMuon_Run2016E',
         'DoubleMuon_Run2016F_e',
         'DoubleEG_Run2016Bv2',
         'DoubleEG_Run2016C',
         'DoubleEG_Run2016D',
         'DoubleEG_Run2016E',
         'DoubleEG_Run2016F_e',
         'MuonEG_Run2016Bv2',
         'MuonEG_Run2016C',
         'MuonEG_Run2016D',
         'MuonEG_Run2016E',
         'MuonEG_Run2016F_e',
         'SingleMuon_Run2016Bv2',
         'SingleMuon_Run2016C',
         'SingleMuon_Run2016D',
         'SingleMuon_Run2016E',
         'SingleMuon_Run2016F_e',
         'SingleElectron_Run2016Bv2',
         'SingleElectron_Run2016C',
         'SingleElectron_Run2016D',
         'SingleElectron_Run2016E',
         'SingleElectron_Run2016F_e',
         ]
InDir =  [  
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleMuon/crab_DoubleMuon_Run2016B-ver2/240205_133752",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleMuon/crab_DoubleMuon_Run2016C/240205_140225",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleMuon/crab_DoubleMuon_Run2016D/240205_140838",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleMuon/crab_DoubleMuon_Run2016E/240205_141453",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleMuon/crab_DoubleMuon_Run2016F_e/240205_142127",
            ],
############# DoubleEG ################
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleEG/crab_DoubleEG_Run2016B-ver2/240205_154141",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleEG/crab_DoubleEG_Run2016C/240205_144809",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleEG/crab_DoubleEG_Run2016D/240205_145404",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleEG/crab_DoubleEG_Run2016E/240205_150008",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/DoubleEG/crab_DoubleEG_Run2016F_e/240205_150624",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/MuonEG/crab_MuonEG_Run2016B-ver2/240205_154805",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/MuonEG/crab_MuonEG_Run2016C/240205_155343",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/MuonEG/crab_MuonEG_Run2016D/240205_155952",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/MuonEG/crab_MuonEG_Run2016E/240205_160559",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/MuonEG/crab_MuonEG_Run2016F_e/240205_161138",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleMuon/crab_SingleMuon_Run2016B-ver2/240205_181216",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleMuon/crab_SingleMuon_Run2016C/240205_181835",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleMuon/crab_SingleMuon_Run2016D/240205_182516",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleMuon/crab_SingleMuon_Run2016E/240213_062114",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleMuon/crab_SingleMuon_Run2016F_e/240205_183804",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleElectron/crab_SingleElectron_Run2016B-ver2/240205_232851",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleElectron/crab_SingleElectron_Run2016C/240205_233436",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleElectron/crab_SingleElectron_Run2016D/240205_234031",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleElectron/crab_SingleElectron_Run2016E/240205_234623",
            ],
	    [
            "/pnfs/knu.ac.kr/data/cms/store/user/sha/Run2FULL/2016PreVFP/DATA/SingleElectron/crab_SingleElectron_Run2016F_e/240205_235214",
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
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          '10', #WJetsToLNu
          '10', #WW
          '10', #WZ
          '10', #ZZ
          '10', #TTJets_Signal_ISRUp
          ]
for Nlist , samplename in enumerate( Sample ):
    iInDir = ""
    for iidir in InDir[Nlist]:
        iInDir += iidir
        iInDir += " "  
        pass
    cmd = 'python MkList_3.py --InDir %s --OutName %s --NumList %s --Isgsidcap \"False\" --OtherUser \"True\" ' %(iInDir,samplename,NumList[Nlist])
    print(cmd)
    os.system(cmd)
    print('\\')
    pass
print("Finish!!!!")
