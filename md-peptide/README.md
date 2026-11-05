# Met-enkephalin in water: the CHEM 438 practice MD run

PDB **1PLW** (Tyr-Gly-Gly-Phe-Met, NMR, model 1), AMBER99SB-ILDN, SPC/E water, cubic box 3.202 nm, 1,027 waters, 3,156 atoms, net charge 0.

Inputs: `1PLW.pdb`, `minim.mdp`, `nvt.mdp`, `npt.mdp`, `md.mdp`, `run_md.sh`.
Outputs of every step, from a run on Swan (gromacs/2025.3, 8 cores; NVT and NPT 10 ps, production 50 ps; 55 s total, 2026-11-05):
`pep_processed.gro` + `topol.top` + `posre.itp` (pdb2gmx) → `pep_newbox.gro` (editconf) → `pep_solv.gro` (solvate) → `em.gro` → `nvt.gro` → `npt.gro` → `md_0_1.gro`, `md_0_1.xtc` (11 frames, 5 ps apart, 50 ps), `md_0_1.log`.
