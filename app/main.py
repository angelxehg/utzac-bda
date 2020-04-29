
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
        if option == "1":
            audioMenu()
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
            print("New audio wizard:")
            name = input("Name >> ")
            author = input("Author >> ")
            lenght = input("Lenght >> ")
            audio = Audio(name, author, lenght)
            print("Result: " + str(audio))
            confirm = input("Confirm? (Y/N)")
            if confirm == "Y" or confirm == "y":
                audios.append(audio)
                input("Audio saved. Press any key to continue >>")
        elif option == "9":
            break


welcome()
mainMenu()
