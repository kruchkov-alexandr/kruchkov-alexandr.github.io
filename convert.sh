#!/bin/bash

# Convert all Markdown files to HTML
for file in posts/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        echo "Converting $file to posts/$filename.html"
        
        # Create Pure Instant View HTML
        pandoc "$file" \
            --standalone \
            --metadata title="$filename" \
            --metadata author="Alex Kruchkov" \
            --metadata date="$(date +%Y-%m-%d)" \
            --metadata filename="$filename" \
            -o "posts/$filename.html" \
            --template=template-pure-instant-view.html
    fi
done

echo "Conversion complete!" 