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

For the final project (sources, shapes and licences in the final-project guidelines):

- `bbbp_permeability.csv` — 2,050 drugs, SMILES and whether each crosses the blood–brain
  barrier (`p_np`, 1/0). Martins et al. 2012, via MoleculeNet (MIT). 11 SMILES do not parse.
- `freesolv_hydration.csv` — 642 molecules, measured (`expt`) and computed (`calc`)
  hydration free energies in kcal/mol. Mobley & Guthrie 2014 (CC-BY).
- `wine_red.csv`, `wine_white.csv` — 1,599 red and 4,898 white wines, 11 chemical
  measurements and a `quality` score. Cortez et al. 2009 (UCI). **Semicolon-separated:**
  `pd.read_csv(url, sep=";")`.
- `periodic_table.csv` — 119 elements, 13 properties. Built from
  Bowserinator/Periodic-Table-JSON (CC BY-SA 3.0).

Load it:

```python
import pandas as pd
url = "https://raw.githubusercontent.com/jyesselm/chem438-notebooks/main/data/penguins.csv"
df = pd.read_csv(url)
```
