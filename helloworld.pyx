import sys

print("Hello world!")

py_version=2 # Python2 by default

# Detect Python2 or Python3
try:
    assert sys.version_info >=(3,0)
    py_version=3
except AssertionError:
    pass


class MyClass(object):
    """A `Class` about this author
    """
    # Name
    name = "alex"

    # Age
    age = 25

    # Gender
    gender = "male"

    # wallet unit
    capital = 0

    # Detect if he is rich
    def is_rich(self):
        if self.capital > 100000000:
            return True
        else:
            return False

    # Detect if goodlooking
    def is_goodlooking(self):
        return True

    # Detect if too old
    def is_too_old(self):
        if self.age >=60:
            return True
        else:
            return False

    # Donate to author
    def donate_him(self, amount=0):
        self.capital += amount
        print("Thanks for your donation %s." % amount)
