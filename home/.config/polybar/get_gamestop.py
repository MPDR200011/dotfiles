#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup

url = 'https://finance.yahoo.com/quote/GME/'
page = requests.get(url)

soup = BeautifulSoup(page.content, 'html.parser')

info = soup.select('#quote-header-info>div:last-child>div:first-child>div>span')

print(f'GME: {info[0].text}, {info[1].text} ')
