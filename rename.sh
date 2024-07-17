#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Используйте: $0 filename new_extension"
    exit 0
fi

# Получение аргументов
filename="$1"
new_extension="$2"

# Извлечение имени файла без пути и расширения
base_name=$(basename "$filename" | sed 's/\(.*\)\..*/\1/')

# Обработка случая, когда в имени файла нет расширения
if [[ "$base_name" == "$filename" ]]; then echo "В оригинальном файле нет расширения"
    exit 0
fi

# Сформировать новое имя файла
new_filename="${base_name}.${new_extension}"

# Переименование файла
mv "$filename" "$new_filename"

# Сообщение об успехе
echo "Новое имя файла: $new_filename"
exit 1



