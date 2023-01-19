@asynchronous
def module_init():
    if not get("enabled",True,"daemon"):
        return
    while True:
        busdir = os.environ["HOME"]
        if os.path.exists("/{}/pardus-greeter".format(busdir)):
            os.unlink("/{}/pardus-greeter".format(busdir))
        os.mkfifo("/{}/pardus-greeter".format(busdir))
        f = open("/{}/pardus-greeter".format(busdir),"r")
        username=""
        password=""
        for line in f.read().split("\n"):
            if line.startswith("username:"):
                username=line[9:]
            if line.startswith("password:"):
                password = line[9:]
            if line.startswith("session:"):
                lightdm.set(session = line[8:])
        loginwindow.o("ui_entry_username").set_text(username)
        loginwindow.o("ui_entry_password").set_text(password)
        lightdm.login()
