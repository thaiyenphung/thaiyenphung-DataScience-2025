# 📝 Worksheet: 02 - Working with Data

Use this worksheet to review and reinforce your understanding of Python data containers.

---

## 🧠 Section 1: Lists

1. What method adds an item to the end of a list?  
   `Answer:` `.append()`
2. How can you remove an item from a list by value?  
   `Answer:` `.remove()`

3. What’s the result of this code?

```python
nums = [2, 4, 6]
nums.append(8)
print(nums)
```

   `Answer:` [2, 4, 6, 8]
---

### ✏️ Task: List Practice

```python
# Create a list of your top 3 favorite foods.
fav_foods = ["sushi", "K-BBQ", "pho"]

# Add another food to the list.
fav_foods.append("spicy tofu soup")

# Remove one item and print the list.
fav_foods.remove("pho")
print(fav_foods)
```

---

## 🔒 Section 2: Tuples

4. What is a key difference between a list and a tuple?  
   `Answer:` Lists can be changed (mutable), while tuples cannot be change after creation (immutable)
5. Can you change the contents of a tuple once it is created? Why or why not?  
   `Answer:` No, because tuples are immutable, the contents in the tuples cannot be changed after creation

---

### ✏️ Task: Tuple Practice

```python
# Create a tuple with your favorite 3 numbers.
fav_nums = (3, 7, 10)

# Unpack it into three variables and print each.
x, y, z = fav_nums
print(x)
print(y)
print(z)
```

---

## 🔑 Section 3: Dictionaries

6. What does the `.get()` method do differently from accessing a key directly?  
   `Answer:` `.get()` returns None or default if key is missing, instead of causing an error

7. How do you loop through both keys and values in a dictionary?  
   `Answer:` Use the `.items()` method in a for loop
   ```python
   my_dict = {'name': 'Phung', 'major': 'Computer Science'}

   for key, value in my_dict.items():
       print(key, ":", value)
   ```

---

### ✏️ Task: Dictionary Practice

```python
# Create a dictionary with keys: 'name', 'age', and 'hobby'.
info = {
        'name': 'Phung',
        'age': 29,
        'hobby': 'coding'
}

# Print each key and value in the format "key: value".
for key, value in info.items():
    print(f"{key}: {value}")
```

---

## 🧾 Submit Checklist

- [x] I practiced creating and modifying lists.
- [x] I understand how tuples are different from lists.
- [x] I accessed and looped through dictionary items.
