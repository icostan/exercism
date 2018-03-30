import string

# using built-in all() method
def is_pangram(s):
    return all(ch in s.lower() for ch in string.lowercase)
