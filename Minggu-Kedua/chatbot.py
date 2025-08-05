welcome_chatbot = "WELCOME TO ROBOTICS CHAT"

print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
print(f"--- {welcome_chatbot} ---")
print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^")

while True :
    user_input = input("you:").lower()
    if user_input in ["halo","selamat pagi","selamat malam", "samlekum"]:
        print("Bot: Halo")
    elif user_input == ("apa kabar?"):
        print("Bot: baik, gimana kabar anda juga?")
    elif user_input == ("baik"):
        print("Bot: senang mendengarnya")
    elif user_input == ("saya ingin minta bantuan"):
        print("Bot: Bantuan apa?")
    elif user_input == ("bantu saya dalam perjumlahan"):
        a = int(input("Bot: masukkan angka pertama = "))
        b = int(input("Bot: masukkan angkat kedua = "))
        jumlah = a + b
        print(f"Bot: {jumlah}")
    elif user_input == ("bantu saya dalam pengurangan"):
        a = int(input("Bot: masukkan angka pertama = "))
        b = int(input("Bot: masukkan angkat kedua = "))
        jumlah = a - b
        print(f"Bot: {jumlah}")
    elif user_input == ("bantu saya dalam perkalian"):
        a = int(input("Bot: masukkan angka pertama = "))
        b = int(input("Bot: masukkan angkat kedua = "))
        jumlah = a * b
        print(f"Bot: {jumlah}")
    elif user_input == ("apakah saya boleh merokok?"):
        a = int(input("Berapakah Umur Anda?"))
        if a > 17:
            print("Bot: Silahkan anda boleh, Tetapi Yang bijak ya Demi Kesehatan")
        else:
            print("Bot: Maaf, anda belum boleh ya")
    elif user_input == ("kenapa emang?"):
            print("Bot: karena anda belum cukup umur dan belum bisa bertanggung jawab dengan kesehatan kamu")
    elif user_input in ["terimakasih ya","exit","bye","sampai jumpa"]:
        print("Bot: Sama - Sama ya Senang Membantu Anda")
        break

    else:
        print("Bot: Maaf Saya Tidak Mengerti")
    