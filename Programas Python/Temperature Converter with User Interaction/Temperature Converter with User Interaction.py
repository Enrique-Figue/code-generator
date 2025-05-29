def celsius_to_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_to_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    print("Temperature Converter Program")
    print("1. Celsius to Fahrenheit")
    print("2. Fahrenheit to Celsius")
    
    while True:
        choice = input("\nEnter choice (1/2) or 'q' to quit: ").strip().lower()
        if choice == 'q':
            print("Exiting program...")
            break
        
        if choice not in ('1', '2'):
            print("Invalid input! Please enter 1, 2, or q")
            continue
        
        try:
            temp = float(input("Enter temperature: "))
        except ValueError:
            print("Invalid temperature! Please enter a numeric value")
            continue
        
        if choice == '1':
            converted = celsius_to_fahrenheit(temp)
            print(f"{temp}°C = {converted:.2f}°F")
        else:
            converted = fahrenheit_to_celsius(temp)
            print(f"{temp}°F = {converted:.2f}°C")

if __name__ == "__main__":
    main()