
def main():
    numbers = []
    while len(numbers) < 5:
        numbers.append(len(numbers) + 1)
        print("#", *numbers)
        
main()

