name: Download Google Drive File

on: [push]

jobs:
  download:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repository
        uses: actions/checkout@v3

      - name: Install gdown
        run: pip install gdown

      - name: Download File from Google Drive
        run: |
          FILE_ID="1ABCDEF123456789"  # Replace with your actual file ID
          FILE_NAME="my_large_file.zip"
          gdown "https://drive.google.com/uc?export=download&id=$FILE_ID" -O $FILE_NAME

      - name: Commit Downloaded File
        run: |
          git config --global user.name "github-actions"
          git config --global user.email "github-actions@github.com"
          git add $FILE_NAME
          git commit -m "Added downloaded file from Google Drive"
          git push
