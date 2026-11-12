# Water with ORCA: the CHEM 438 practice QM run

Water, hand-drawn geometry (O–H 1.100 / 1.077 Å, 105.1°), B3LYP/6-31G*, ORCA 6.1 on Swan (`module load compiler/gcc/11 openmpi/4.1 orca/6.1`, 2026-11-10).

Inputs: `water_sp.inp` (single point), `water_opt.inp` (optimisation), `water_opt_freq.inp` (optimisation + frequencies), `run_orca.sh` (the job for the last one).
`reference/` holds every output: `water_sp.out` (−76.349971 Eh, 1 s), `water_stretch.inp/.out` (one O–H at 1.30 Å, −76.311196 Eh), `water_opt.out` + `water_opt.xyz` + `water_opt_trj.xyz` (5 cycles, −76.369984 Eh, O–H 0.969 Å, 103.9°, 7 s), `water_opt_freq.out` + `.xyz` + `.hess` (1709, 3717, 3840 cm⁻¹, 0 imaginary; job 18891551, 13 s).

Four more runs for Lecture 23 (reading the results), same method and basis, all `Opt Freq`, run on the Swan login node 2026-11-11; `reference/` has each one's `.inp`, `.out`, `.xyz`, `_trj.xyz` and `.hess`:

| run | what it is | final energy (Eh) | imaginary modes |
|---|---|---|---|
| `water_linear` | water started at 180°, stays there | −76.313928 | 2 (−1733 cm⁻¹): a ridge, 147 kJ/mol above bent water |
| `formaldehyde` | H₂CO minimum | −114.439032 | 0; C=O stretch 1851 cm⁻¹ (expt 1746) |
| `ethane_staggered` | the minimum | −79.763925 | 0 |
| `ethane_eclipsed` | H–C–C–H dihedral held at 0° (`%geom Constraints`) | −79.759513 | 1 (−301 cm⁻¹): the rotation transition state, 11.6 kJ/mol up |

`bigger/` is Lecture 23's last chunk and Homework 12: the same job on molecules nobody types by hand. `make_xyz.py` builds `aspirin.xyz` and `ethanol.xyz` from SMILES with RDKit; the inputs point at them with `* xyzfile 0 1 name.xyz`; `run_orca.sh` takes the input's name as its argument. All run on **one core** of Swan (`--ntasks=1 --mem=4G`), 2026-11-12, B3LYP D3BJ def2-SVP unless said:

| run | atoms | basis functions | one core took | result |
|---|---|---|---|---|
| `ethanol_opt_freq` | 9 | 72 | 1 min 43 s | 6 cycles, −154.835580 Eh, 0 imaginary |
| `aspirin_cheap` (`r2SCAN-3c Opt`) | 21 | 307 | 12 min | 16 cycles, −648.601709 Eh (not comparable with B3LYP) |
| `aspirin_opt_freq` | 21 | 307 | 37 min | 14 cycles, −647.918982 Eh, 0 imaginary |

`files.txt` lists every file for `wget -i`.
