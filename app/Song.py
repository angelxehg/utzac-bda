
from Audio import Audio, AudioMenu


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


class SongMenu(AudioMenu):

    # Constructor
    def __init__(self, db):
        AudioMenu.__init__(self, db)

    # Show options
    def options(self):
        print("")
        print("/musify/music")
        print("Please select an option:")
        print("1 - List all songs")
        print("2 - Store new song metadata")
        print("9 - Back to main menu")

    # Show menu
    def show(self):
        while True:
            self.options()
            option = input("Please select an option >> ")
            if option == "1":
                print("Song list:")
                for song in self.db.songs:
                    print(song)
                input("All songs listed. Press any key to continue")
            elif option == "2":
                newSong = Song.wizard()
                if newSong is not None:
                    self.db.songs.append(newSong)
            elif option == "9":
                break
