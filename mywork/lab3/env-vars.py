#!/usr/bin/python3


import os

# Prompt for user input and store in variables
favorite_brand = input('What is your favorite brand? ')
programming_language = input('What is your preferred programming language? ')
occupation = input('What is your dream occupation? ')
favorite_color = input('What is your favorite color? ')

# Set environment variables based on user input
os.environ["FAVORITE_BRAND"] = favorite_brand
os.environ["PROGRAMMING_LANGUAGE"] = programming_language
os.environ["DREAM_OCCUPATION"] = occupation
os.environ["FAVORITE_COLOR"] = favorite_color


# Fetch and print the environment variables
print(os.getenv("FAVORITE_BRAND"))
print(os.getenv("PROGRAMMING_LANGUAGE"))
print(os.getenv("DREAM_OCCUPATION"))
print(os.getenv("FAVORITE_COLOR"))

