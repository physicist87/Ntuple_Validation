import os

def resubmit(SampleName, StudyName, NumFiles, Config):
    path = os.getcwd()
    print "%s "%(StudyName)
    path=path.replace("/Batch", "/")
    total_ = 0
    for idx in range(1,NumFiles+1):
        fileName = "%s/output/%s/%s/%s_%s.root"%(path,StudyName,SampleName,SampleName,idx)
        if os.path.isfile(fileName): 
            file_size = os.path.getsize(r'%s'%fileName) 
            if file_size < 10000:

                print "Resubmit (wrong finished job) !! %s "%(fileName)
                Make_CondorScr(SampleName, idx, StudyName, Config)
                total_ = total_+1
            else : 
                pass
                #print "Good !! %s "%(fileName)
             
        else :
            print "Resubmit (missed job) !! %s "%(fileName)
            Make_CondorScr(SampleName, idx, StudyName, Config)
            total_ = total_+1
        
        pass
    print "%s total : %s "%(StudyName,total_)
    pass

def Make_CondorScr(sampleName, idx_,outputDir, ConfigName) :
    path = os.getcwd()
    os.system("mkdir -p %s/%s"%(outputDir,sampleName))
    path=path.replace("/Batch", "/")
    os.getcwd()
    os.system ('pwd')
    os.system ('mkdir -p Log')
    print path
    SampleFile = sampleName
    SubFile = SampleFile + "_"
    #qsubcmd = 'qsub -q short '
    runSh = outputDir + "_resubmit_"+SampleFile + "_%s.sh" % (idx_)
    print "runSh : %s"%(runSh)
    f = open( runSh, 'w')
    f.write('#!/bin/tcsh \n')
    f.write('setenv SCRAM_ARCH slc6_amd64_gcc530 \n')
    f.write('source /cvmfs/cms.cern.ch/cmsset_default.csh \n')
    f.write('setenv LD_PRELOAD "/usr/lib64/libpdcap.so" \n')
    f.write('cd '+ path + " \n")
    #f.write('mkdir -p ./output/%s/%s \n'%(sampleName,outputDir))
    f.write('mkdir -p ./output/%s/%s \n'%(outputDir,sampleName))
    f.write('cmsenv \n')
    SampList = MakeSampleIdxList(SampleFile,idx_)
    print "SampList %s"%(SampList)
    f.write('set inputlists = (%s) \n'%(SampList) )
    f.write('foreach i ( $inputlists )\n')
    f.write('   mkdir -p output \n')
    f.write('   ./NoiseTerm_Study %s/${i}.list %s/%s/ ${i}.root %s \n'%(sampleName,outputDir,sampleName, ConfigName))
    f.write('end \n')
    #runcmd = "./ssb_analysis "+ SampleFile + "_%s.list " % (i) + SampleFile + "_%s.root " % (i) + " 0 "
    #f.write(runcmd)
    f.close()
    runchMod = "chmod 755 " + runSh
    os.system (runchMod)

    ### making submit File ###
    f1 = open( "./%s/%s/resubmit_condor_%s_%s.submit"%(outputDir,sampleName,SampleFile,idx_) , 'w')
    f1.write('# Unix submit description file\n')
    f1.write('Universe = vanilla\n')
    f1.write('Executable = ./%s\n'%(runSh))
    f1.write('request_memory = 20000 \n')
    f1.write('should_transfer_files   = Yes\n')
    f1.write('Output      = ./%s/%s/resubmit_%s_%s.output\n'%(outputDir,sampleName,SampleFile,idx_))
    f1.write('error       = ./%s/%s/resubmit_errors_%s_%s.txt\n'%(outputDir,sampleName,SampleFile,idx_))
    f1.write('log         = ./%s/%s/resubmit_test_%s_%s.log\n'%(outputDir,sampleName,SampleFile,idx_))
    f1.write('Queue 1\n')
    f1.close()
    subchMod = "condor_submit " + "./%s/%s/resubmit_condor_%s_%s.submit"%(outputDir,sampleName,SampleFile,idx_)
    os.system (subchMod)
    pass

def MakeSampleIdxList(Sample,index_):
    SampleList =""
    print "index_ %s in MakeSampleIdxList "%(index_)
    SampleList += '"%s_%s"'%(Sample,index_)
    SampleList += " "
    pass
    print SampleList
    return SampleList
    pass


if __name__ == '__main__':


    StudyName = "TestPFCHS_v1"
    StudyName = "AppliedJEC_v1"
    StudyName = "AppliedJEC_v3"
    StudyName = "AppliedJEC_v4"
    StudyName = "StudyRun2017_v1"
    StudyName = "StudyRun2017_v2"
    StudyName = "StudyRun2017_v4_NoJEC"
    StudyName = "StudyRun2017_v5_NoJEC"
    StudyName = "StudyRun2017_v5"
    StudyName = "StudyRun2017_v5p1"
    StudyName = "StudySC2017_v1"
    StudyName = "StudySC2017_v2"
    StudyName = "StudyRun2017_v5p2"
    StudyName = "StudySC2017_v5p1"
    StudyName = "StudySC2018_v5"
    StudyName = "StudySC2018_v7"
    StudyName = "StudySC2017_v7"
    StudyName = "Cone05_2017_v1"
    StudyName = "Cone03_2017_v1"
    StudyName = "Cone08_2018_v1"
    StudyName = "JECSummer20L2Relative_2018_v1"
    #RunPeriod = ["PURunA","PURunB","PURunC","PURunD"]
    RunPeriod = ["PURunB","PURunC","PURunD","PURunE","PURunF","MC"]
    RunPeriod = ["PURunB","PURunC","PURunD","PURunE","PURunF","MC"]
    #RunPeriod = ["MC"]
    SystOpt = "PileUpUp"
    SystOpt = "PileUpDown"
    SystOpt = "L1Cor"
    SystOpt = "All"

    #SystOpt = "PileUpUp"

    RunPeriod = ["PURunB","PURunC","PURunD","PURunE","PURunF","MC"]
    RunPeriod = ["PURunA","PURunB","PURunC","PURunD","MC"]
    #RunPeriod = ["PURunD"]
    for ipu in RunPeriod:
        Study = "%s/%s/PileUpUp"%(StudyName, ipu) 
        Study = "%s/%s/Central"%(StudyName, ipu) 
        #Study = "%s/%s/NoJEC"%(StudyName, ipu) 
        #Study = "%s/%s/JECDown"%(StudyName, ipu) 
        #Study = "%s/%s/NoPU"%(StudyName, ipu) 
        #Study = "%s/%s/%s"%(StudyName, ipu, SystOpt) 
        #Make_CondorScr("SingleNeutrino_Flat2017",Study,221,221, "./configs/%s/SingleNeutrino_Flat2017.config"%(Study))
        #resubmit("SingleNeutrino_PreMix2017",Study,21,"./configs/%s/SingleNeutrino_PreMix2017.config"%(Study))
        #resubmit("SingleNeutrino_Flat2017",Study,30, "./configs/%s/SingleNeutrino_Flat2018.config"%(Study))
        #resubmit("SingleNeutrino_PreMix2017",Study, 30, "./configs/%s/SingleNeutrino_PreMix2017.config"%(Study))
        resubmit("SingleNeutrino_Flat2018",Study,30, "./configs/%s/SingleNeutrino_Flat2018.config"%(Study))
   # Make_CondorScr("SingleNeutrino_Flat2017",Study,221,221, "./configs/%s/SingleNeutrino_Flat2017.config"%(Study))

        #if ipu == "PURunA" or ipu == "PURunB":Make_CondorScr("SingleNeutrino_NoPU",Study,40,40, "./configs/%s/SingleNeutrino_NoPU.config"%(Study))
        #if ipu == "PURunC" or ipu == "PURunD":Make_CondorScr("SingleNeutrino_NoPU_HEM",Study,79,79, "./configs/%s/SingleNeutrino_NoPU_HEM.config"%(Study))
    print Study
