import time
from functools import reduce

import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
from collections import Counter

def whatNumIsThis(filePath):
    matchedArr=[]
    loadExamps=open('numArraEx.txt','r').read()
    loadExamps=loadExamps.split('\n')

    i=Image.open(filePath)
    iar=np.array(i)
    iar1=iar.tolist()
    inQuestion=str(iar1)
    for eachExample in loadExamps:
            if len(eachExample)>3:
                splitEx=eachExample.split('::')
                currentNum=splitEx[0]
                currentArray=splitEx[1]

                eachPixEx=currentArray.split('],')
                eachPixInQ=inQuestion.split('],')
                x=0
                while x<len(eachPixEx):
                     if eachPixEx[x]==eachPixInQ[x]:
                        matchedArr.append(int(currentNum))
                x+=1
    print(matchedArr)
    x=Counter(matchedArr)
    print(x)

def createExample():
    numberArrayExample =open('numArraEx.txt','a')
    numbersWeHave=range(0,10)
    print(numbersWeHave)
    versionWeHave=range(1,10)
    print(versionWeHave)
    for eachNum in numbersWeHave:
#numberArrayExample.write("\n")
        for eachVer in versionWeHave:
#numberArrayExample.write(str(eachNum)+","+str(eachVer)+"\t")
            imgFilePath='images/numbers/'+str(eachNum)+'.'+str(eachVer)+'.png'
            ei=Image.open(imgFilePath)
            eiar=np.array(ei)
            eiar1=str(eiar.tolist())
            lineToWrite=str(eachNum)+'::'+eiar1+'\n'
            numberArrayExample.write(lineToWrite)



def thresholdImage(imageArray):
    balanceArr=[]
    newArr=imageArray
    for eachRow in imageArray:
        for eachpix in eachRow:
            avgNum=reduce(lambda x,y:x+y,eachpix[:3])/len(eachpix[:3])
            balanceArr.append(avgNum)
# print(eachpix)
# time.sleep(5)
            balance=reduce(lambda x,y:x+y,balanceArr)/len(balanceArr)
    for eachRow in newArr:
        for eachpix in eachRow:
            if reduce(lambda x,y:x+y,eachpix[:3])/len(eachpix[:3])>balance:
                eachpix[0]=255 #Annotation Red Color
                eachpix[1]=255 #Annotation Red Color
                eachpix[2]=255 #Annotation Red Color
                eachpix[3]=255 #Annotation Red Color
            else:
                eachpix[0] = 0 # Annotation Red Color
                eachpix[1] = 0 # Annotation Red Color
                eachpix[2] = 0 # Annotation Red Color
                eachpix[3] = 255 # Annotation Red Color
    return newArr

i=Image.open("images/sentdex.png")
iar=np.array(i)

#print(iar)
#thresholdImage(iar)
fig=plt.figure()
ax1=plt.subplot2grid((8,6),(0,0),rowspan=4,colspan=4)
ax1.imshow(iar)
plt.show()


if __name__ =='__main__':
 createExample()
 thresholdImage()
 whatNumIsThis("/home/admin/PycharmProjects/ImageProcessing/images/numbers/0.2.png")