#! /usr/bin/python
import os
directory_path = os.getcwd()
print(directory_path)

import pyperclip
pyperclip.copy(directory_path)
