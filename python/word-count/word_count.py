from collections import defaultdict
import re


def word_count(text):
    words = defaultdict(lambda: 0)
    for w in re.split('[_\s\W]', text.lower().decode('utf-8'), re.UNICODE):
        if w == '':
            continue
        words[w] += 1
    return words
