for file in *.backup; do
    mv -- "$file" "${file%%.backup}"
done