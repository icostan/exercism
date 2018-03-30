DNA = 'GCTA'
RNA = 'CGAU'

def to_rna(strand):
    if all(ch in DNA for ch in strand):
        return strand.translate(str.maketrans(DNA, RNA))
    else:
        return ''
