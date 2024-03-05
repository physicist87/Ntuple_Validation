import os
import sys
import subprocess
import argparse

parser = argparse.ArgumentParser(description = 'options for Batch Jobs')

parser.add_argument('--totalJob',dest="totalJob",action="store",type=int,default= 1,help='Total Number of crab job or files to check duplicated or empty files')
parser.add_argument('--NumList',dest="numlist",action="store",type=int,default= 1,help='The number of files of list you want')
parser.add_argument('--InDir',dest="inDir",action="store",default= os.getcwd(),help='Input files location Defalut is current Directory')
parser.add_argument('--OutName',dest="outDir",action="store",default= "Test",help='Output Name')
parser.add_argument('--Isgsidcap',dest="isgsidcap",action="store",default= "False",help='If you want to use gsidcap ...')
parser.add_argument('--OtherUser',dest="isotherUser",action="store",default= "False",help='If you want to use other user\'s dir....')
args = parser.parse_args()

def inplace_change(filename, old_string, new_string):
        s=open(filename).read()
        if old_string in s:
                print 'Changing "{old_string}" to "{new_string}"'.format(**locals())
                s=s.replace(old_string, new_string)
                f=open(filename, 'w')
                f.write(s)
                f.flush()
                f.close()
        else:
                print 'No occurances of "{old_string}" found.'.format(**locals())

def split_file(fileName,Num_Fils):
        f = open(fileName+".list", 'r')
        lines = f.readlines()
        print "Num_lines ? " ,len(lines)/Num_Fils  
        totalnumlines = len(lines)
        print "totalnumlines ? ", totalnumlines, " Num_Fils ? ", Num_Fils
        numlineM = totalnumlines/Num_Fils
        firstline = 0
        Maxline = len(lines)/Num_Fils 
        lastline = Maxline
        for i in range(0,Num_Fils):
            fnew=open(fileName + "_%s.list"%(i+1), 'w')
            sys.stdout.writelines(lines[firstline:lastline])
            fnew.writelines(lines[firstline:lastline])
            print "firstline ? ", firstline, "  lastline ? ", lastline
            firstline = lastline

            if i < (Num_Fils -2) :
                lastline = lastline + Maxline
            else :
                lastline = totalnumlines
            print Num_Fils , " ----%s  " %(i)
def duplication(fileName,Num_Files):
    s = open(fileName+".list").read()
    for x in range (1,Num_Files+1):
        if s.count("SSBTree_%s"%(x) ) > 1 :
             print "SSBTree_%s Num. File : %s"%(x, s.count("SSBTree_%s_"%(x) ) )
        if s.count("SSBTree_%s"%(x) ) == 0 :
            print "No Exist SSBTree_%s"%(x)

def Main():
    Dir = 'ls /pnfs/knu.ac.kr/data/cms/store/user/sha/'
    if (args.isotherUser == "False") :
        Dir = 'ls /pnfs/knu.ac.kr/data/cms/store/user/sha/'
    else : 
        Dir = 'ls '
    print "other user ? %s" %(args.isotherUser)
    TotalJob = args.totalJob
    print "%s" %(args.isgsidcap)
    subDir = args.inDir
    listName = args.outDir 
    print TotalJob," ",subDir, listName
    os.system('mkdir -p ./InputList')
    ListDir = './InputList/'+listName
    os.system('mkdir -p ' + ListDir)
    os.system("rm -f " + listName + ".list")
    ending = '*/*.root >> ' + listName +".list"
    listcmd = ""
    #listcmd = Dir+subDir+"/*/"+ending
    listcmd = Dir+subDir+"/"+ending
    print listcmd
    os.system (listcmd)
    #timejob= raw_input("To save the time to make file list ")
    print "%s" %(args.isgsidcap)
    if (args.isgsidcap == "False") :
       inplace_change(listName +".list","/pnfs","dcap://cluster142.knu.ac.kr//pnfs")
       print " TEst !!"
    else :
       inplace_change(listName +".list","/pnfs","gsidcap://cluster142.knu.ac.kr//pnfs")

    #NumFiles = input("How many list files do you want ? : ")
    NumFiles = args.numlist
    split_file(listName ,NumFiles)
    os.system( 'mv *.list ' + ListDir )
## Start MainFunction ##
Main()
#listcmd
