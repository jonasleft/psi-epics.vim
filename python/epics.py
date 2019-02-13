import json
import re
import vim

def print_records():
    cb = vim.current.buffer
    for line in cb:
      p = re.compile('record\((.*),.*"(.*)".*\)', re.IGNORECASE)
      m = p.match(line)
      if m is not None:
          print(m.group(2))

