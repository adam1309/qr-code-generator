import qrcode

def main():
    default_link = "https://www.linkedin.com/in/adamsalah/"
    user_input = input(f"Enter a new URL or press Enter to use the default [{default_link}]: ").strip()
    link = user_input if user_input else default_link

    # Generate the QR code
    qr = qrcode.QRCode(
         version=1,
         error_correction=qrcode.constants.ERROR_CORRECT_L,
         box_size=10,
         border=4,
    )
    qr.add_data(link)
    qr.make(fit=True)
    
    # Create the QR code image and save it
    img = qr.make_image()
    img.save("my_qr_code.png")
    print(f"QR code generated and saved as 'my_qr_code.png' using the URL: {link}")

if __name__ == "__main__":
    main()
