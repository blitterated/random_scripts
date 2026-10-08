import random
from types import SimpleNamespace


def create_counter():
    """Constructor method for Counter objects using closures and SimpleNamespace. I'm sorry."""

    # Essentially, Private members.
    help_text = "Call .inc() to raise the count and .dec() to lower it."
    count = 0

    # Methods, but still essentially Private.
    def help():
        return help_text

    def inc():
        nonlocal count
        count += 69
        return f"inc: {count}"

    def dec():
        nonlocal count
        count -= 69
        return f"dec: {count}"

    # A Public declaration of the above methods... essentially.
    return SimpleNamespace(**{
        "help": help,
        "inc": inc,
        "dec": dec,
    })


def main():
    # Instantiate a Counter object.
    counter = create_counter()

    # Call a method on the instance.
    print(counter.help())

    # Call more methods on the instance.
    num_of_rounds = 25
    for _ in range(num_of_rounds):
        if(bool(random.getrandbits(1))):
            print(counter.inc())
        else:
            print(counter.dec())


if __name__ == "__main__":
    main()
