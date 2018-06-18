
from os import remove, rename
from os.path import join
remove(join("boo","f.txt"))
rename(join("boo","tt.txt"),join("boo","se.txt"))
