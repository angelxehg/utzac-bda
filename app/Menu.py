
class Menu():

    # Constructor
    def __init__(self):
        self.setRoute("/musify/")

    def setRoute(self, route):
        self.__route = route

    def askForOption(self):
        print("")
        print(self.__route)
        print("Please select an option:")

    # Show options
    def options(self):
        self.askForOption()
        print("1 - Audios")
        print("2 - Music")
        print("3 - Podcast")
        print("9 - Exit")
