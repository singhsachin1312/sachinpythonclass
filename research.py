# sachinpythonclass
lorem_text="hello i m sachin singh, want to join hp classessssss"
import re
found=re.search("sachin.*join",lorem_text)
print(found)

match=re.search("found",lorem_text)
type(match)
print(match)

print(found.start())
print(found.end())
