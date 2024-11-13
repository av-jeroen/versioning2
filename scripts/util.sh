#!/bin/bash

first_word_to_lowercase() {
  # Check if input is provided
  if [ -z "$1" ]; then
    echo "Please provide a string."
    return 1
  fi
  
  # Extract the first word and convert it to lowercase
  first_word=$(echo "$1" | awk '{print tolower($1)}')
  
  # Replace the first word in the original string with the lowercase version
  rest_of_string="${1#* }"
  
  # Print the result
  if [ -z "$rest_of_string" ]; then
    echo "$first_word"
  else
    echo "$first_word $rest_of_string"
  fi
}