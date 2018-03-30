def distance(dna1, dna2):
    if len(dna1) != len(dna2):
        raise ValueError
    # no map since int(True) counts as 1 int(False) counts as 0
    return sum(a1 != a2 for (a1, a2) in zip(dna1, dna2))
