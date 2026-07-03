from pathlib import Path

p = Path(r"2026.06.26\traces\0a\trace_full_~2a780a.json")

with p.open("rb") as f:
    magic = f.read(8)

print(magic.hex())