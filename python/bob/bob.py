#
# Skeleton file for the Python "Bob" exercise.
#


def hey(what):
    # no need for complex logic once we strip the input
    what = what.strip()
    if len(what) == 0:
        return 'Fine. Be that way!'
    elif what.isupper():
        return 'Whoa, chill out!'
    elif what.endswith('?'):
        return 'Sure.'
    else:
        return 'Whatever.'
