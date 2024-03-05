import os
import sys
import subprocess

cmd = 'qdel'
for i in range(2593169,2593426+1):
    stcmd = cmd + ' %s' %(i)
    os.system (stcmd)
print "finshed --"
