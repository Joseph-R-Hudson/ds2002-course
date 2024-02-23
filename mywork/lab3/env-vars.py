#!/Users/josephhudson/opt/anaconda3/bin/python3

import os

os.environ["HAIR_COLOR"] = input('What is the color of your hair? ')
os.environ["SIBLINGS"] = input('Do you have any siblings? ')
os.environ["PET"] = input('Do you like dogs or cat more? ')

print(os.getenv("HAIR_COLOR"))
print(os.getenv("SIBLINGS"))
print(os.getenv("PET"))

