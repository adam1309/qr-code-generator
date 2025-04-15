@echo off
:: Batch script to create folders and basic files for a GitHub project

echo Creating project directory structure...

:: Create subfolders
mkdir src
mkdir tests
mkdir docs

:: Create or overwrite README.md
echo # My QR Code Project > README.md
echo >> README.md
echo This project demonstrates how to generate QR codes offline using Python. >> README.md
echo >> README.md
echo ## Project Structure >> README.md
echo - src: Source code for generating QR codes >> README.md
echo - tests: Unit tests or sample usage >> README.md
echo - docs: Additional documentation >> README.md

:: (Optional) Create a sample Python script
echo Creating sample Python script in src...
(
    echo import qrcode
    echo
    echo def main():
    echo     link = "https://your-link-here.com"
    echo     img = qrcode.make(link)
    echo     img.save("my_qr_code.png")
    echo     print("QR code generated successfully!")
    echo
    echo if __name__ == "^__main^__":
    echo     main()
)> src\generate_qr.py

echo Project setup complete!
pause
