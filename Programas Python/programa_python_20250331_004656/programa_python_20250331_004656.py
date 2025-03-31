# Name: Educational Math Tutor with Step-by-Step Solutions

def add(a, b):
    a_display = int(a) if a.is_integer() else a
    b_display = int(b) if b.is_integer() else b
    result = a + b
    result_display = int(result) if result.is_integer() else result
    return f"{a_display} + {b_display} = {result_display}"

def subtract(a, b):
    a_display = int(a) if a.is_integer() else a
    b_display = int(b) if b.is_integer() else b
    result = a - b
    result_display = int(result) if result.is_integer() else result
    return f"{a_display} - {b_display} = {result_display}"

def multiply(a, b):
    a_display = int(a) if a.is_integer() else a
    b_display = int(b) if b.is_integer() else b
    result = a * b
    result_display = int(result) if result.is_integer() else result
    return f"{a_display} × {b_display} = {result_display}"

def divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero.")
    a_display = int(a) if a.is_integer() else a
    b_display = int(b) if b.is_integer() else b
    result = a / b
    result_display = int(result) if result.is_integer() else round(result, 2)
    return f"{a_display} ÷ {b_display} = {result_display}"

def power(a, b):
    a_display = int(a) if a.is_integer() else a
    b_display = int(b) if b.is_integer() else b
    result = a ** b
    result_display = int(result) if result.is_integer() else round(result, 2)
    return f"{a_display}^{b_display} = {result_display}"

def main():
    operations = {
        '1': ('Addition', add),
        '2': ('Subtraction', subtract),
        '3': ('Multiplication', multiply),
        '4': ('Division', divide),
        '5': ('Exponentiation', power)
    }
    
    while True:
        print("\nMath Tutor - Choose an operation:")
        for key in operations:
            print(f"{key}. {operations[key][0]}")
        print("6. Exit")
        
        choice = input("Enter your choice (1-6): ")
        
        if choice == '6':
            print("Exiting the program. Goodbye!")
            break
        
        if choice not in operations:
            print("Invalid choice. Please select 1-6.")
            continue
        
        try:
            num1 = float(input("Enter the first number: "))
            num2 = float(input("Enter the second number: "))
        except ValueError:
            print("Error: Please enter valid numbers.")
            continue
        
        operation_name, func = operations[choice]
        print(f"\n{operation_name} Step-by-Step:")
        try:
            explanation = func(num1, num2)
            print(explanation)
        except ValueError as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    main()