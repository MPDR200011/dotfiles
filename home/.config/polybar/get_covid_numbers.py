#!/usr/bin/env python3

import requests
import json
import sys

country = sys.argv[1]

response = requests.get(f"https://corona.lmao.ninja/v2/countries/{country}")

if response.status_code != 200:
    print(f"Invalid country: {country}")
    exit(1)

data = json.loads(response.text)

active = data['active']
cases = data['todayCases']
recovered = data['todayRecovered']

print(f"Active Cases: {data['active']} ({cases - recovered})")
