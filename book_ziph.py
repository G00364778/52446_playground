import seaborn as sns
from collections import Counter
import matplotlib.pyplot as pl
import pandas as pd
import numpy as np
bookpath=r'C:\Users\Jattie\Documents\jupyter\52465_assignments\data\ulyses_by_james_joyce.txt'

def wordcount(booktext=bookpath,ncount=20):
    '''
    '''
    wordlist=[]
    words=[]
    counts=[]
    #idxs=[]
    with open(booktext, 'r', encoding='utf-8') as infile:
        for line in infile:
            fwords=line.strip().split()
            for word in fwords:
                wordlist.append(word.casefold().strip('[,:.]'))
    wordcount=Counter(wordlist)
    mc=wordcount.most_common(ncount)
    #i=21
    for w,c in mc:
        words.append(w)
        counts.append(c)
        #i=i-1
        #idxs.append(i)
    #print(len(words),len(counts),len(idxs))
    #df=pd.DataFrame({'idx': idxs,'words': words,'counts': counts})
    df=pd.DataFrame({'words': words,'counts': counts})
    return df 

if __name__ == "__main__":
    df=wordcount(ncount=10)
    sns.barplot('words','counts',data=df,estimator=np.mean)
    pl.show()
