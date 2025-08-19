import tkinter as tk

root = tk.Tk()
root.title("Calculator by Shreyaa")
root.geometry("350x500")
root.config(bg="light green")

input_text = tk.StringVar()
title = tk.Label(root, text="Calculator by Shreya", font=("Arial", 15, "bold"), bg="light green")
title.grid(row=0, column=0, columnspan=4, pady=10)
screen = tk.Entry(root, textvar=input_text, font=("Arial", 28), bd=5, insertwidth=4, width=10, bg="pink", relief="sunken")
screen.grid(row=1, column=0, columnspan=4, padx=10, pady=10, ipady=12)
def click(num):
    input_text.set(input_text.get() + str(num))

def clear():
    input_text.set("")

def calculate():
    try:
        result = str(eval(input_text.get()))
        input_text.set(result)
    except:
        input_text.set("Error")
buttons = [
    ('7', 2, 0), ('8', 2, 1), ('9', 2, 2), ('/', 2, 3),
    ('4', 3, 0), ('5', 3, 1), ('6', 3, 2), ('*', 3, 3),
    ('1', 4, 0), ('2', 4, 1), ('3', 4, 2), ('-', 4, 3),
    ('0', 5, 0), ('.', 5, 1), ('=', 5, 2), ('+', 5, 3),
]

for (text, row, col) in buttons:
    if text == "=":
        b = tk.Button(root, text=text, padx=20, pady=20, bg="light grey", command=calculate)
    else:
        b = tk.Button(root, text=text, padx=20, pady=20, bg="orange", command=lambda t=text: click(t))
    b.grid(row=row, column=col, padx=5, pady=5, sticky="nsew")
clear_btn = tk.Button(root, text="Clear", padx=20, pady=20, bg="yellow", command=clear)
clear_btn.grid(row=6, column=0, columnspan=4, padx=5, pady=5, sticky="nsew")

root.mainloop()