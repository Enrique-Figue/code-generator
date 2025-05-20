def celsius_to_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_to_celsius(f):
    return (f - 32) * 5/9

while True:
    user_input = input("Enter temperature (e.g., 32C, 100F) or 'exit': ").strip().lower()
    if user_input == 'exit':
        print("Exiting...")
        break
    if not user_input:
        print("Invalid input. Please try again.")
        continue
    try:
        unit = user_input[-1]
        temp = float(user_input[:-1])
        if unit == 'c':
            converted = celsius_to_fahrenheit(temp)
            print(f"{temp}°C is {converted:.1f}°F")
        elif unit == 'f':
            converted = fahrenheit_to_celsius(temp)
            print(f"{temp}°F is {converted:.1f}°C")
        else:
            print("Invalid unit. Use 'C' or 'F'.")
    except ValueError:
        print("Invalid temperature value. Please try again.")