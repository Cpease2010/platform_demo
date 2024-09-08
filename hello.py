def main():
    while True:
        # Ask for the user's name
        name = input("Enter your name (or type 'exit' to quit): ").strip()

        # Check if the user wants to exit
        if name.lower() == 'exit':
            print("Goodbye!")
            break

        # Print the name back
        print(f"Hello, {name}!")

if __name__ == "__main__":
    main()
