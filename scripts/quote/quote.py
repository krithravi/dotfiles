import random

with open('/home/krithika/scripts/quote/text.txt') as f:
    lines = f.readlines()
    print(random.choice(lines))
