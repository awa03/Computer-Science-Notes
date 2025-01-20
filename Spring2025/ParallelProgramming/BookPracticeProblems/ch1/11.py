def main():
    for n in range(100, 200):
        if n % 7 == 0 and n % 3 == 0:
            print("FooBar")
        if n % 3 == 0:
            print("Foo")
        elif n % 7 == 0:
            print("Bar")
        else:   
            print(n)

main()
