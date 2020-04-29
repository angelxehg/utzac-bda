
class Audio():

    # Constructor
    def __init__(self, name, author, length):
        self.name = name
        self.author = author
        self.lenght = length

    # Print as string
    def __str__(self):
        return "\"" + self.name + "\" by " + self.author + " (" + self.lenght + ")"
