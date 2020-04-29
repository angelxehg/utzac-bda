
from Audio import Audio, AudioMenu


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


class PodcastMenu(AudioMenu):

    # Constructor
    def __init__(self, db):
        AudioMenu.__init__(self, db)

    # Show options
    def options(self):
        print("")
        print("/musify/podcast")
        print("Please select an option:")
        print("1 - List all podcasts")
        print("2 - Store new podcast metadata")
        print("9 - Back to main menu")

    # Show menu
    def show(self):
        while True:
            self.options()
            option = input("Please select an option >> ")
            if option == "1":
                print("Podcast list:")
                for podcast in self.db.podcasts:
                    print(podcast)
                input("All podcasts listed. Press any key to continue")
            elif option == "2":
                newPodcast = Podcast.wizard()
                if newPodcast is not None:
                    self.db.podcasts.append(newPodcast)
            elif option == "9":
                break
