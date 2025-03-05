#!/usr/bin/env python

from json import loads
import subprocess
from os import popen
from sys import argv

def ipc_query(req="command", msg=""):
    ans = popen("i3-msg -t " + req + " " +  msg).readlines()[0]
    return loads(ans)

def is_active(screen):
    return screen['active']

def get_screen_name(screen):
    return screen['name']

if __name__ == "__main__":
    outputs = ipc_query(req="get_outputs")

    activeScreens = list(filter(is_active, outputs))
    print(activeScreens)

    activeNames = list(map(get_screen_name, activeScreens))
    print(activeNames)

    with subprocess.Popen(['/usr/bin/rofi', '-dmenu', '-p', 'Move workspace to screen'],\
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, text=True) as proc:

        out, err = proc.communicate("\n".join(activeNames))

        answer = out.strip()
        print(ipc_query(msg=f"'move workspace to output {answer}'"))
