sounds = {
    'Pling': 3,
    'Plang': 5,
    'Plong': 7
}

def convert(n):
    sound = ''.join(s for s, m in sounds.items() if n % m == 0)
    return sound or str(n)
