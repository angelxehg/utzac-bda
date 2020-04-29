
from Menu import Menu


class Audio():

    # Constructor
    def __init__(self, name, author, length):
        self.name = name
        self.author = author
        self.lenght = length

    # Print as string
    def __str__(self):
        return "\"" + self.name + "\" by " + self.author + " (" + self.lenght + ")"

    # Wizard
    @staticmethod
    def wizard():
        print("New Audio wizard:")
        name = input("Name >> ")
        author = input("Author >> ")
        lenght = input("Lenght >> ")
        newAudio = Audio(name, author, lenght)
        print("Result: " + str(newAudio))
        confirm = input("Confirm? (Y/N)")
        if confirm == "Y" or confirm == "y":
            print("New audio saved!")
            return newAudio
        else:
            print("Operation canceled!")
            return None


class AudioMenu(Menu):

    # Constructor
    def __init__(self, db):
        self.db = db
        self.setRoute("/musify/audio")

    # Show options
    def options(self):
        self.askForOption()
        print("1 - List all audios")
        print("2 - Store new audio metadata")
        print("9 - Back to main menu")

    # Show menu
    def show(self):
        while True:
            self.options()
            option = input("Please select an option >> ")
            if option == "1":
                print("Audio list:")
                for audio in self.db.audios:
                    print(audio)
                input("All audios listed. Press any key to continue")
            elif option == "2":
                newAudio = Audio.wizard()
                if newAudio is not None:
                    self.db.audios.append(newAudio)
            elif option == "9":
                break
