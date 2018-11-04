import collections
import matplotlib.pyplot as pl
import numpy.random as rnd
import seaborn as sns
import numpy as np
import pandas as pd

a=np.random.binomial(99, 0.073, 30000)
b=collections.Counter(a)
c=b.most_common()
df=pd.DataFrame(c,columns=['val','count'])
sns.barplot('val','count',data=df)
pl.show()