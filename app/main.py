
from Menu import Menu
from Audio import Audio, AudioMenu
from Song import Song, SongMenu
from Podcast import Podcast, PodcastMenu
from Database import Database

# Create a Database
db = Database()
audioMenu = AudioMenu(db)
musicMenu = SongMenu(db)
podcastMenu = PodcastMenu(db)

# Welcome screen


def welcome():
    print(" - - - - - - - - - - - - - - - - - - - ")
    print(" | W E L C O M E   T O   M U S I F Y | ")
    print(" - - - - - - - - - - - - - - - - - - - ")

# Main menu


menu = Menu()


def mainMenu():
    while True:
        menu.options()
        option = input("Please select an option >> ")
        if option == "1":
            audioMenu.show()
        elif option == "2":
            musicMenu.show()
        elif option == "3":
            podcastMenu.show()
        elif option == "9":
            break


welcome()
mainMenu()
