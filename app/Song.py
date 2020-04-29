
from Audio import Audio


class Song(Audio):

    # Constructor
    def __init__(self, name, author, length, album):
        Audio.__init__(self, name, author, length)
        self.album = album

    # Print as string
    def __str__(self):
        return "\"" + self.name + "\" by " + self.author + " from \"" + self.album + "\" album (" + self.lenght + ")"

    # Wizard
    @staticmethod
    def wizard():
        print("New Song wizard:")
        name = input("Name >> ")
        author = input("Author >> ")
        lenght = input("Lenght >> ")
        album = input("Album >> ")
        newSong = Song(name, author, lenght, album)
        print("Result: " + str(newSong))
        confirm = input("Confirm? (Y/N)")
        if confirm == "Y" or confirm == "y":
            print("New song saved!")
            return newSong
        else:
            print("Operation canceled!")
            return None
