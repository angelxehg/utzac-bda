
from Audio import Audio


class Podcast(Audio):

    # Constructor
    def __init__(self, name, author, length, program):
        Audio.__init__(self, name, author, length)
        self.program = program

    # Print as string
    def __str__(self):
        return "\"" + self.name + "\" by " + self.author + " from \"" + self.program + "\" program (" + self.lenght + ")"

    # Wizard
    @staticmethod
    def wizard():
        print("New Podcast wizard:")
        name = input("Name >> ")
        author = input("Author >> ")
        lenght = input("Lenght >> ")
        program = input("Program >> ")
        newPodcast = Podcast(name, author, lenght, program)
        print("Result: " + str(newPodcast))
        confirm = input("Confirm? (Y/N)")
        if confirm == "Y" or confirm == "y":
            print("New podcast saved!")
            return newPodcast
        else:
            print("Operation canceled!")
            return None
