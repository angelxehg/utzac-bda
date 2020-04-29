
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
