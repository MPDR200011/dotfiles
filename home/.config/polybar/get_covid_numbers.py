#!/usr/bin/env python3

import requests
import json
import sys

country = sys.argv[1]

response = requests.get(f"https://corona.lmao.ninja/v2/countries/{country}")

data = json.loads(response.text)

active = data['active']
cases = data['todayCases']
recovered = data['todayRecovered']

print(f"Active Cases: {data['active']} ({cases - recovered})")
