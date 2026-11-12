import csv
import glob

for path in sorted(glob.glob("runs/run_*/energy.csv")):
    with open(path) as fh:
        energies = [float(row["energy"]) for row in csv.DictReader(fh)]
    run = path.split("/")[1]
    print(f"{run}  mean energy {sum(energies) / len(energies):.2f}")
