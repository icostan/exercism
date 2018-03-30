import re

def is_isogram(word):
    w = re.sub('\W+', '', word.lower())
    return len(set(list(w))) == len(w)
