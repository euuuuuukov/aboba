#!/bin/bash

# Функция для проверки формата txt файла
check_format() {
  # Проверяем, что файл существует
  if [[ ! -f "$1" ]]; then
    echo "File does not found."
    exit 1
  fi

  # Проверяем, что файл имеет расширение .txt
  if [[ "$1" != *.txt ]]; then
    echo "Invalid file format."
    exit 1
  fi

  echo "File format is correct."
  exit 0
}

# Проверяем формат каждого переданного файла
for file in "$@"; do
  check_format "$file"
done