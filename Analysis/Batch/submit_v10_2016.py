import os
import sys
import subprocess


def Make_CondorScr(sampleName,NumFileList,NumJob) :
    path = os.getcwd()
    os.system("mkdir -p %s"%(sampleName))
    path=path.replace("/Batch", "/")
    os.getcwd()
    os.system ('pwd')
    os.system ('mkdir -p Log')
    os.system ('ls')
    print(path)
    numjobs = NumJob
    numfiles = NumFileList
    SampleFile = sampleName
    SubFile = SampleFile + "_"
    #qsubcmd = 'qsub -q short '
    Lists = MakeSeparateList(numfiles,numjobs)
    for i in range(0,numjobs):
        idx_ = i +1
        runing = sampleName+"/" +SampleFile + "_%s.sh" % (idx_)
        f = open( runing, 'w')
        f.write('#!/bin/tcsh \n')
        #f.write('setenv SCRAM_ARCH slc6_amd64_gcc530 \n')
        f.write('source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh \n')
        #f.write('setenv LD_PRELOAD "/usr/lib64/libpdcap.so" \n')
        f.write('cd '+ path + " \n")
        f.write('mkdir -p ./output/%s \n'%(sampleName))
        f.write('cmsenv \n')
        SampList = MakeSampleIdxList(SampleFile,Lists[i])
        print("SampList %s"%(SampList))
        f.write('set inputlists = (%s) \n'%(SampList) )
        f.write('foreach i ( $inputlists )\n')
        f.write('   mkdir -p output \n')
        f.write('   mkdir -p output/%s \n'%(sampleName))
        f.write('   ./TopMass_analysis %s/${i}.list %s/${i}.txt \n'%(sampleName,sampleName))
        f.write('end \n')
        #runcmd = "./ssb_analysis "+ SampleFile + "_%s.list " % (i) + SampleFile + "_%s.root " % (i) + " 0 "
        #f.write(runcmd)
        f.close()
        runchMod = "chmod 755 " + runing
        print(runchMod)
        os.system (runchMod)

        ### making submit File ###
        f1 = open( "./%s/condor_%s_%s.submit"%(sampleName,SampleFile,idx_) , 'w')
        f1.write('# Unix submit description file\n')
        f1.write('Universe = vanilla\n')
        #f1.write('x509userproxy = $ENV(X509_USER_PROXY)\n')
        f1.write('Executable = ./%s/%s_%s.sh\n'%(sampleName,SampleFile,idx_))
        f1.write('request_memory = 20000 \n')
        f1.write('should_transfer_files   = Yes\n')
        f1.write('Output      = ./%s/%s_%s.output\n'%(sampleName,SampleFile,idx_))
        f1.write('error       = ./%s/errors_%s_%s.txt\n'%(sampleName,SampleFile,idx_))
        f1.write('log         = ./%s/test_%s_%s.log\n'%(sampleName,SampleFile,idx_))
        f1.write('Queue 1\n')
        f1.close()
        subchMod = "condor_submit " + "./%s/condor_%s_%s.submit"%(sampleName,SampleFile,idx_)
        os.system (subchMod)
    pass

def MakeSampleIdxList(Sample,Lists):
    SampleList =""
    for index_ in Lists:
        print("index_ %s in MakeSampleIdxList "%(index_))
        SampleList += '"%s_%s"'%(Sample,index_)
        SampleList += " "
        pass
        #SamleList
    print(SampleList)
    return SampleList
    pass

def MakeSeparateList(NumFiles, NumJob):
    quo = NumFiles/NumJob
    seplists=[]
    for inx_ in range(NumJob) :
        emptyarray =[]
        seplists.append(emptyarray)
    print( "size of seplists : %s "%len(seplists))
    for inumfile in  range (1,NumFiles+1):
        #print "%s"%(inumfile%NumJob)
        seplists[inumfile%NumJob].append(inumfile)
    for idx_ in seplists:
        print("content of %s "%(idx_))
    return seplists
    pass


#Make_CondorScr("SingleNeutrino_v1",40,40)
if __name__ == '__main__':

    #Study = "%s/%s/%s"%(StudyName, SubName, SystOpt) 
    #Study = "%s/%s"%(StudyName, SubName)
    Make_CondorScr("DYJetsToLL_M_10To50",204, 21)
    Make_CondorScr("DYJetsToLL_M_10To50_Mad",108, 11)
    Make_CondorScr("DYJetsToLL_M_50",368, 37)
    Make_CondorScr("TTbar_Signal",151,15)
    Make_CondorScr("TTbar_AllHadron", 391,39)
    Make_CondorScr("TTbar_SemiLep", 530,53)
    Make_CondorScr("TTJets_Inclusive",381,38)
    Make_CondorScr("WJetsToLNu",119,12)
    Make_CondorScr("WJetsToLNu_Mad",307,30)
    Make_CondorScr("WW",40,4)
    Make_CondorScr("WZ",80,8)
    Make_CondorScr("ZZ",7,1)
    Make_CondorScr("DoubleEG_Run2016Bv2",265,27)
    Make_CondorScr("DoubleEG_Run2016C", 88,9)
    Make_CondorScr("DoubleEG_Run2016D", 146,15)
    Make_CondorScr("DoubleEG_Run2016E", 125,13)
    Make_CondorScr("DoubleEG_Run2016F_e", 79,8)
    Make_CondorScr("DoubleMuon_Run2016Bv2", 264,27)
    Make_CondorScr("DoubleMuon_Run2016C", 88,9)
    Make_CondorScr("DoubleMuon_Run2016D", 147,15)
    Make_CondorScr("DoubleMuon_Run2016E", 125,13)
    Make_CondorScr("DoubleMuon_Run2016F_e", 79,8)   
    Make_CondorScr("MuonEG_Run2016Bv2", 264,27)
    Make_CondorScr("MuonEG_Run2016C", 88,9)
    Make_CondorScr("MuonEG_Run2016D", 147,15)
    Make_CondorScr("MuonEG_Run2016E", 125,13)
    Make_CondorScr("MuonEG_Run2016F_e", 79,8)    
    Make_CondorScr("SingleMuon_Run2016Bv2", 264,27)
    Make_CondorScr("SingleMuon_Run2016Bv2", 264,27)
    Make_CondorScr("SingleMuon_Run2016C", 88,9)
    Make_CondorScr("SingleMuon_Run2016D", 146,15)
    Make_CondorScr("SingleMuon_Run2016E", 125,13)
    Make_CondorScr("SingleMuon_Run2016F_e", 79,8)    
    Make_CondorScr("SingleElectron_Run2016Bv2", 264,27)
    Make_CondorScr("SingleElectron_Run2016C", 88,9)
    Make_CondorScr("SingleElectron_Run2016D", 146,15)
    Make_CondorScr("SingleElectron_Run2016E", 125,13)
    Make_CondorScr("SingleElectron_Run2016F_e", 79,8)    
