def remove_duplicates(s):
    """Removes duplicates using a loop as required[cite: 45]."""
    result = ""
    for char in s:
        if char not in result:
            result += char
    return result

print(remove_duplicates("platinumrx"))