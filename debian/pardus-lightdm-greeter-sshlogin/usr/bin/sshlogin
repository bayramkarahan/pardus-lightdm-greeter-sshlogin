#!/usr/bin/python3
import sys
import os
from getpass import getpass
session=""

if os.getuid() != 0:
    print("Permission denied")
    sys.exit(1)

if len(sys.argv) > 1:
    username=sys.argv[1]
else:
    username=input("Username: ")

if len(sys.argv) > 2:
    password=sys.argv[2]
else:
    password=getpass("Password: ")


if len(sys.argv) > 3:
    session=sys.argv[3]



if not os.path.exists("/var/lib/lightdm/pardus-greeter"):
    print("Failed to connect lightdm")
    sys.exit(1)
else:
    f = open("/var/lib/lightdm/pardus-greeter","w")
    f.write("username:{}\n".format(username))
    f.write("password:{}\n".format(password))
    f.write("session:{}\n".format(session))
    f.close()
