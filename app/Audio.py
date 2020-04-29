
class Audio():

    # Constructor
    def __init__(self, name, author, length):
        self.__name = name
        self.__author = author
        self.__lenght = length

    # Print as string
    def __str__(self):
        return "\"" + self.__name + "\" by " + self.__author + " - " + self.__lenght

    # Get track name
    def getName(self):
        return self.__name
