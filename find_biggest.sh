#!/bin/bash

echo "Пошук трьох найбільш важких директорій в поточній директорії..."

output=$(du -h --max-depth=1 2>/dev/null | grep '^[0-9,.]' | sort -h | tail -n 3)

if [[ -z "$output" ]]; then
    echo "Не знайдено підкаталогів або всі підкаталоги порожні."
else
    echo "Результати:"
    echo "$output"
fi
