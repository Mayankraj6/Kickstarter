#!/bin/bash
echo "Downloading file from Google Drive..."

# Install gdown if not installed
pip install gdown

# Replace FILE_ID with the actual File ID from your Google Drive link
FILE_ID="1ABCDEF123456789"  # Replace with your actual file ID
FILE_NAME="my_large_file.zip"  # Replace with your desired file name

# Download the file
gdown "https://drive.google.com/uc?export=download&id=$FILE_ID" -O $FILE_NAME

echo "Download complete: $FILE_NAME"
