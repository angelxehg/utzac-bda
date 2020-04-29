
from Audio import Audio

#song = Audio("Love Song", "Angel Hurtado", "3:56")
# print(song)

# Create an audio array
audios = []

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
    print("9 - Exit")


def showAudioMenu():
    print("")
    print("/musify/audios")
    print("Please select an option:")
    print("1 - List all audios")
    print("2 - Store new audio metadata")
    print("9 - Exit")


def mainMenu():
    while True:
        showMainMenu()
        option = input("Please select an option >> ")
        print(option)
        if option == "1":
            audioMenu()
        elif option == "9":
            break


def audioMenu():
    while True:
        showAudioMenu()
        option = input("Please select an option >> ")
        print(option)
        if option == "1":
            input("OK. Press a key to continue")
        elif option == "9":
            break


welcome()
mainMenu()
