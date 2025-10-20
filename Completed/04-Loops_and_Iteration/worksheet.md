# 📝 Worksheet: 04 - Loops and Iteration

Practice and reflect on how loops work in Python.

---

## 🔁 Section 1: For Loops

1. What does `range(5)` produce?

`Answer:` Numbers from 0 to 4 (0, 1, 2, 3, 4)

2. Write a `for` loop that prints numbers 1 to 10, but skips 5.

```python
# Your code:
for i in range (1, 11):
    if i == 5:
        continue
    print(i)
```

---

## 🔁 Section 2: While Loops

3. What’s the difference between a `for` loop and a `while` loop?

`Answer:` 
- A `for` loop is used when we know how many times we want to loop, such as looping through a range of numbers or items in a list.
- A `while` loop is used when we don't know how many time we'll to loop, the loop runs as long as the condition is True, and stops when it becomes False.

4. What happens if a `while` loop's condition never becomes `False`?

`Answer:` We get an infinite loop
---

### ✏️ Task: Countdown with While

```python
# Use a while loop to count down from 5 to 1.
count = 5

while count > 0:
    print(count)
    count = count - 1
```

---

## 📁 Section 3: File Reading and `with`

5. What does the `with` statement do when opening a file?

`Answer:` It opens and closes the file automatically, even if an error occurs.

6. How do you loop over each line in a file?

`Answer:` 
```python
for line in file:
    print(line)
```

---

### ✏️ Task: File Filter

Write code that prints only the lines in a file that contain the word `"error"`.

```python
# Your code here
with open("fileName.txt", "r") as file:
    for line in file:
        if "error" in line:
            print(line.strip())
```
