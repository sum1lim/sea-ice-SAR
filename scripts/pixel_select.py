import sys
import pandas as pd

x = int(sys.argv[1])
y = int(sys.argv[2])

data = []
for row in range(100):
    for col in range(100):
        a, b = x, y
        
        a = a - 50 + row
        b = b - 50 + col 
        
        data.append([a, b, 0, 0, 0])

df = pd.DataFrame(data, columns = ["row", "col", "label","lat", "lon"])

df.to_csv("/tmp/base.csv", index=False)