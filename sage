# appendixA_tables.sage
# Compute and print π(x) bounds from Rosser–Schoenfeld for x = 10^4,10^5,...,10^9

import mpmath as mp

def pi_lower(x):
    return x/mp.log(x)/(1 + 1/(2*mp.log(x)))

def pi_upper(x):
    return x/mp.log(x)*(1 + 1/(2*mp.log(x)))

mp.mp.dps = 20
for exp in range(4,10):
    x = mp.mpf(10)**exp
    print(f"x={x:.0f}, π(x) ≥ {pi_lower(x):.6f}, π(x) ≤ {pi_upper(x):.6f}")
