#!/bin/bash

# Convert all Markdown files to HTML
for file in posts/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        echo "Converting $file to posts/$filename.html"
        
        # Create HTML with proper structure for Instant View
        pandoc "$file" \
            --standalone \
            --metadata title="$filename" \
            --metadata author="Alex Kruchkov" \
            --metadata date="$(date +%Y-%m-%d)" \
            --metadata filename="$filename" \
            -o "posts/$filename.html" \
            --template=template.html
    fi
done

echo "Conversion complete!" 