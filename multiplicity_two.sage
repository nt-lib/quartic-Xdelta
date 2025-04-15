from mdsage import *

for N,M in [(37,2), (37,3), (43,2), (53,3)]:
    for E in modular_symbol_elliptic_curves(N, sign=1):
        Xi = product_isogeny_map(E, N*M)
        A = Xi.image()
        invs = A.shimura_subgroup().invariants()
        assert invs == []
        print(N*M,N,M, invs)
