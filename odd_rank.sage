from mdsage import *

counter = 0
for E in modular_symbol_elliptic_curves_range(100, sign=1):
    counter += 1
    invs = E.shimura_subgroup().invariants()
    if invs != []:
        print(E.level(), invs)
    if counter%100 ==0:
        print(f"finished levels < {E.level()}")
print("Done!")
