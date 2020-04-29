
from Audio import Audio


class Song(Audio):

    # Constructor
    def __init__(self, name, author, length, album):
        Audio.__init__(self, name, author, length)
        self.album = album

    # Print as string
    def __str__(self):
        return "\"" + self.name + "\" by " + self.author + " from \"" + self.album + "\" album (" + self.lenght + ")"
