#!/bin/bash

# Convert all Markdown files to Pure Instant View HTML
echo "🔄 Converting Markdown to Pure Instant View HTML..."

for file in posts/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        echo "📝 Converting $file to posts/$filename-instant-view.html"
        
        # Create Pure Instant View HTML
        pandoc "$file" \
            --standalone \
            --metadata title="$filename" \
            --metadata author="Alex Kruchkov" \
            --metadata date="$(date +%Y-%m-%d)" \
            --metadata filename="$filename" \
            -o "posts/$filename-instant-view.html" \
            --template=template-pure-instant-view.html
        
        echo "✅ Created: posts/$filename-instant-view.html"
    fi
done

echo ""
echo "🎉 Pure Instant View conversion complete!"
echo ""
echo "📋 Generated files:"
for file in posts/*-instant-view.html; do
    if [ -f "$file" ]; then
        echo "   - $file"
    fi
done

echo ""
echo "🚀 Next steps:"
echo "   1. Push to GitHub Pages"
echo "   2. Test in Telegram: https://kruchkov-alexandr.github.io/posts/test-instant-view-instant-view.html"
echo "   3. No manual template needed!" 