
from Audio import Audio, AudioMenu
from Song import Song, SongMenu
from Podcast import Podcast
from Database import Database

#song = Audio("Love Song", "Angel Hurtado", "3:56")
# print(song)

# Create a Database
db = Database()
audioMenu = AudioMenu(db)
musicMenu = SongMenu(db)

# Welcome screen


def welcome():
    print(" - - - - - - - - - - - - - - - - - - - ")
    print(" | W E L C O M E   T O   M U S I F Y | ")
    print(" - - - - - - - - - - - - - - - - - - - ")

# Main menu


def showMainMenu():
    print("")
    print("/musify/")
    print("Please select an option:")
    print("1 - Audios")
    print("2 - Music")
    print("3 - Podcast")
    print("9 - Exit")


def showPodcastMenu():
    print("")
    print("/musify/podcast")
    print("Please select an option:")
    print("1 - List all podcasts")
    print("2 - Store new podcast metadata")
    print("9 - Back to main menu")


def mainMenu():
    while True:
        showMainMenu()
        option = input("Please select an option >> ")
        if option == "1":
            audioMenu.show()
        elif option == "2":
            musicMenu.show()
        elif option == "3":
            podcastMenu()
        elif option == "9":
            break


def podcastMenu():
    while True:
        showPodcastMenu()
        option = input("Please select an option >> ")
        if option == "1":
            print("Podcast list:")
            for podcast in db.podcasts:
                print(podcast)
            input("All podcasts listed. Press any key to continue")
        elif option == "2":
            newPodcast = Podcast.wizard()
            if newPodcast is not None:
                db.podcasts.append(newPodcast)
        elif option == "9":
            break


welcome()
mainMenu()
