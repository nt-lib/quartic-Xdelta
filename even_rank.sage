from mdsage import *

for E in modular_symbol_elliptic_curves_range(100, sign=-1):
    invs = E.shimura_subgroup().invariants()
    if invs != []:
        print(E.level(), invs)
print("Done!")
