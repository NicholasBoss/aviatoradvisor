import gzip
import json

with gzip.open(r"2026.06.26\traces\00\trace_full_ad8000.json", "rt", encoding="utf-8") as f:
    data = json.load(f)

print(data)