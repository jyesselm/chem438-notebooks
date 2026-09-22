# data

Datasets used in lecture, so `pd.read_csv` works from a URL with nothing to upload.

- `penguins.csv` — 344 Palmer penguins (Horst, Hill & Gorman 2020). Three species, three
  islands, four body measurements. Has genuine missing values, which is half the reason
  it is a teaching dataset.

Load it:

```python
import pandas as pd
url = "https://raw.githubusercontent.com/jyesselm/chem438-notebooks/main/data/penguins.csv"
df = pd.read_csv(url)
```
