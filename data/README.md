# data

Datasets used in lecture, so `pd.read_csv` works from a URL with nothing to upload.

- `penguins.csv` — 344 Palmer penguins (Horst, Hill & Gorman 2020). Three species, three
  islands, four body measurements. Has genuine missing values, which is half the reason
  it is a teaching dataset.

- `esol_solubility.csv` — 1,128 compounds with **measured** aqueous solubility (Delaney
  2004, redistributed by DeepChem under MIT). Columns include `smiles` and `measured log
  solubility in mols per litre`; the rest were computed by whoever built the file, which
  makes it a good set for checking your own numbers against someone else's. Used by
  Homework 9 and by example 1 of the final project.

Load it:

```python
import pandas as pd
url = "https://raw.githubusercontent.com/jyesselm/chem438-notebooks/main/data/penguins.csv"
df = pd.read_csv(url)
```
