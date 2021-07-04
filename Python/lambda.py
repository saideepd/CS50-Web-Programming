people = [
    {"name": "Harry", "house": "Gryffindor"},
    {"name": "Cho", "house": "Ravenclaw"},
    {"name": "Draco", "house": "Slytherin"},
]

# def f(person):
#     return person["house"]

# people.sort(key=f)

# Lambda function that takes person and returns the name of person
# key=lamda input:output
people.sort(key=lambda person:person["name"])

print(people)