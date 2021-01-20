from typing import List, Tuple

Sound = Tuple[str, int]

sounds: List[Sound] = [
    ('Pling', 3),
    ('Plang', 5),
    ('Plong', 7)
]

def convert(n: int) -> str:
    sound = ''.join(s for (s, m) in sounds if n % m == 0)
    return sound or str(n)

