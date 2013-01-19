Python Scripts


----------------------------------------------------------------


# What's a quick one-liner to remove empty lines from a python string?
# where text is the string with the possible extraneous lines?
# http://stackoverflow.com/questions/1140958/whats-a-quick-one-liner-to-remove-empty-lines-from-a-python-string
import os
text = os.linesep.join([s for s in text.splitlines() if s])


----------------------------------------------------------------
