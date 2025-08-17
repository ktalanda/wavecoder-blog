#!/bin/bash

# Script to create a new blog post
# Usage: ./post.sh <date> <title>
# Example: ./post.sh 250816 "My New Blog Post"

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <date> <title>"
    echo "Example: $0 250816 \"My New Blog Post\""
    echo ""
    echo "Date format: YYMMDD (e.g., 250816 for August 16, 2025)"
    exit 1
fi

DATE="$1"
TITLE="$2"

# Validate date format (6 digits)
if ! [[ "$DATE" =~ ^[0-9]{6}$ ]]; then
    echo "❌ Error: Date must be in YYMMDD format (6 digits)"
    echo "Example: 250816 for August 16, 2025"
    exit 1
fi

# Check if folder already exists
if [ -d "$DATE" ]; then
    echo "❌ Error: Post folder '$DATE' already exists!"
    exit 1
fi

# Create the post folder
echo "📁 Creating post folder: $DATE"
mkdir "$DATE"

# Create content.md with title as header
echo "📝 Creating content.md with title: $TITLE"
echo "# $TITLE" > "$DATE/content.md"
echo "" >> "$DATE/content.md"
echo "Your content goes here..." >> "$DATE/content.md"

echo "✅ New blog post created successfully!"
echo "📂 Folder: $DATE/"
echo "📄 File: $DATE/content.md"
echo ""
echo "You can now edit $DATE/content.md to add your blog content."

./sync.sh
