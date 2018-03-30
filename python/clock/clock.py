def day():
    return 24 * 60

class Clock:
    """Documentation for Clock

    """
    def __init__(self, hours, minutes):
        self.clock = 0
        self.add(hours * 60 + minutes)
        
    def __str__(self):
        h = str(self.hours()).rjust(2, '0')
        m = str(self.minutes()).rjust(2, '0')
        return h + ':' + m

    def __eq__(self, other):
        return self.clock == other.clock
    
    def __shift(self):
        self.clock %= day()

    def add(self, minutes):
        self.clock += minutes
        self.__shift()
        return self;

    def hours(self):
        return self.clock / 60
    
    def minutes(self):
        return self.clock % 60


