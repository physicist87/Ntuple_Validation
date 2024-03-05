import os
import sys
import subprocess
import argparse

parser = argparse.ArgumentParser(description = 'options for Batch Jobs')
parser.add_argument('--NumJobs',dest="numjob",action="store",type=int,default= 1,help='The number of files of list you want')
parser.add_argument('--NumFileList',dest="numfiles",action="store",type=int,default= 1,help='The number of files of list you want')
parser.add_argument('--InSample',dest="insample",action="store",default= os.getcwd(),help='Input files location Defalut is current Directory')
args = parser.parse_args()

def Main(sampleName,NumFileList,NumJob) :
    path = os.getcwd() 
    path=path.replace("/Batch", "/")
    os.getcwd()
    workdir = os.getcwd()
    os.system ('pwd')
    os.system ('mkdir -p Log')
    os.system ('mkdir -p output')
    os.system ('mkdir -p errors')
    os.system ('mkdir -p %s/output/%s/'%(path,sampleName) )
    os.system ('mkdir -p %s/errors/%s/'%(path,sampleName) )
    os.system ('ls')
    numjobs = NumJob
    numfiles = NumFileList
    SampleFile = sampleName
    SubFile = SampleFile + "_"
    qsubcmd = 'qsub -q large '
    #qsubcmd = 'qsub -q short '
   
    ### making submit File ###
    f1 = open( "runSubmit_%s.sh"%(SampleFile) , 'w')
    f1.write('#!/bin/bash \n')
    #f1.write('PBS -o /dev/null \n')
    nonstd = "/dev/null"
    quota = NumFileList/NumJob

    Lists = MakeSeparateList(numfiles,numjobs) 
    for i in range(1,numjobs+1):
        runing = SampleFile + "_%s.sh" % (i)
        f = open( runing, 'w')
        f.write('#!/bin/tcsh \n')
        f.write('cd '+ path + " \n")
        SampList = MakeSampleIdxList(SampleFile,Lists[i-1])
        print "SampList %s"%(SampList)
        f.write('set inputlists = (%s) \n'%(SampList) )
        f.write('foreach i ( $inputlists )\n')
        f.write('   mkdir -p output \n')
        f.write('   ./TopMass_analysis ${i}.list ${i}.root 0 \n')
        f.write('end \n')
        f.close()
        qsu = qsubcmd + " -l walltime=48:00:00,cput=48:00:00 " + " -e " + workdir +"/Log/" + " -o /dev/null" + " -N " + SampleFile + "_%s " % (i) + runing 
        #qsu = qsubcmd + " -l walltime=00:45:00,cput=00:30:00 " + " -e " + workdir +"/Log/" + " -o /dev/null" + " -N " + SampleFile + "_%s " % (i) + runing 
        print qsu
        f1.write(qsu+'\n')
        runchMod = "chmod 755 " + runing
        os.system (runchMod)
    f1.close()
    subchMod = "chmod 755 " + "runSubmit_%s.sh"%(SampleFile)
    os.system (subchMod)
    batchcmd = "./runSubmit_%s.sh"%(SampleFile)
    print batchcmd
    os.system (batchcmd)
    pass

def MakeSeparateList(NumFiles, NumJob):
    quo = NumFiles/NumJob
    seplists=[]
    for inx_ in range(NumJob) :
        emptyarray =[]
        seplists.append(emptyarray)
    print "size of seplists : %s "%len(seplists)
    for inumfile in  range (1,NumFiles+1):
        #print "%s"%(inumfile%NumJob)
        seplists[inumfile%NumJob].append(inumfile)
    for idx_ in seplists:
        print "content of %s "%(idx_)
    return seplists
    pass

def MakeSampleIdxList(Sample,Lists):
    SampleList =""
    for index_ in Lists:
        print "index_ %s in MakeSampleIdxList "%(index_)
        SampleList += '"%s"/"%s_%s"'%(Sample,Sample,index_)
        SampleList += " "
        pass
        #SamleList
    print SampleList
    return SampleList
    pass
Main(args.insample,args.numfiles,args.numjob)
