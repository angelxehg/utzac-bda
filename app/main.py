
from Audio import Audio
from Song import Song
from Podcast import Podcast

#song = Audio("Love Song", "Angel Hurtado", "3:56")
# print(song)

# Create an audio array
audios = []
songs = []
podcasts = []

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


def showAudioMenu():
    print("")
    print("/musify/audio")
    print("Please select an option:")
    print("1 - List all audios")
    print("2 - Store new audio metadata")
    print("9 - Back to main menu")


def showMusicMenu():
    print("")
    print("/musify/music")
    print("Please select an option:")
    print("1 - List all songs")
    print("2 - Store new song metadata")
    print("9 - Back to main menu")


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
            audioMenu()
        elif option == "2":
            musicMenu()
        elif option == "3":
            podcastMenu()
        elif option == "9":
            break


def audioMenu():
    while True:
        showAudioMenu()
        option = input("Please select an option >> ")
        if option == "1":
            print("Audio list:")
            for audio in audios:
                print(audio)
            input("All audios listed. Press any key to continue")
        elif option == "2":
            newAudio = Audio.wizard()
            if newAudio is not None:
                audios.append(newAudio)
        elif option == "9":
            break


def musicMenu():
    while True:
        showMusicMenu()
        option = input("Please select an option >> ")
        if option == "1":
            print("Song list:")
            for song in songs:
                print(song)
            input("All songs listed. Press any key to continue")
        elif option == "2":
            newSong = Song.wizard()
            if newSong is not None:
                songs.append(newSong)
        elif option == "9":
            break


def podcastMenu():
    while True:
        showPodcastMenu()
        option = input("Please select an option >> ")
        if option == "1":
            print("Podcast list:")
            for podcast in podcasts:
                print(podcast)
            input("All podcasts listed. Press any key to continue")
        elif option == "2":
            newPodcast = Podcast.wizard()
            if newPodcast is not None:
                podcasts.append(newPodcast)
        elif option == "9":
            break


welcome()
mainMenu()
