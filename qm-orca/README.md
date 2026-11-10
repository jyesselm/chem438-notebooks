# Water with ORCA: the CHEM 438 practice QM run

Water, hand-drawn geometry (O–H 1.100 / 1.077 Å, 105.1°), B3LYP/6-31G*, ORCA 6.1 on Swan (`module load compiler/gcc/11 openmpi/4.1 orca/6.1`, 2026-11-10).

Inputs: `water_sp.inp` (single point), `water_opt.inp` (optimisation), `water_opt_freq.inp` (optimisation + frequencies), `run_orca.sh` (the job for the last one).
`reference/` holds every output: `water_sp.out` (−76.349971 Eh, 1 s), `water_stretch.inp/.out` (one O–H at 1.30 Å, −76.311196 Eh), `water_opt.out` + `water_opt.xyz` + `water_opt_trj.xyz` (5 cycles, −76.369984 Eh, O–H 0.969 Å, 103.9°, 7 s), `water_opt_freq.out` + `.xyz` + `.hess` (1709, 3717, 3840 cm⁻¹, 0 imaginary; job 18891551, 13 s).
