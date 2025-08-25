print("Temperature Converter Celsius ↔ Fahrenheit")
option = input("\nChoose conversion:\n1. Celsius to Fahrenheit\n2. Fahrenheit to Celsius\n\nOption: ")

if option not in ("1", "2"):
    print("Invalid option. Please select 1 or 2.")
else:
    try:
        temp = float(input("\nEnter temperature: "))
        if option == "1":
            result = (temp * 9/5) + 32
            print(f"\n{temp}°C is equivalent to {result:.2f}°F")
        else:
            result = (temp - 32) * 5/9
            print(f"\n{temp}°F is equivalent to {result:.2f}°C")
    except ValueError:
        print("Error: Please enter a numeric value.")