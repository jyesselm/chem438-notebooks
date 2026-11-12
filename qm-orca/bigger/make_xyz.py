"""The starting geometries for the ORCA runs in this folder: a SMILES string, RDKit's 3D guess, a force-field clean-up."""
from rdkit import Chem
from rdkit.Chem import AllChem

molecules = {"aspirin": "CC(=O)Oc1ccccc1C(=O)O", "ethanol": "CCO"}

for name, smiles in molecules.items():
    mol = Chem.AddHs(Chem.MolFromSmiles(smiles))      # SMILES leaves hydrogens implicit; ORCA needs every atom
    AllChem.EmbedMolecule(mol, randomSeed=1)           # a 3D guess
    AllChem.MMFFOptimizeMolecule(mol)                  # relaxed with a force field, so ORCA starts somewhere sane
    open(f"{name}.xyz", "w").write(Chem.MolToXYZBlock(mol))
    print(name, mol.GetNumAtoms(), "atoms")
