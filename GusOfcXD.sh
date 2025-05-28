#!/bin/bash
# GUSxOFC Version 1
# Dibuat oleh: GUSxOFC

# Warna
red="\e[31m"
green="\e[32m"
blue="\e[34m"
cyan="\e[36m"
white="\e[97m"
yellow="\e[33m"
reset="\e[0m"

clear
toilet -f big -F gay "GusOfc"
echo -e "${cyan}================================================"
echo -e "${green}       GUSxOFC Version 1 | Dibuat Oleh GUSxOFC"
echo -e "${cyan}================================================"
sleep 1

# Animasi pembuka
for i in {1..5}; do
    echo -e "${yellow}⚡ Loading Fitur..." && sleep 0.3
done

echo -e "${blue}[1] Spam Ripport WhatsApp"
echo -e "${blue}[2] Lagu Sad - Kamin"
echo -ne "${white}Pilih Fitur: "; read pil

if [[ $pil == "1" ]]; then
    clear
    toilet -f term "SPAM REPORT"
    echo -ne "${green}Masukkan Nomor WhatsApp (62xxxx): ${reset}"; read target
    echo -ne "${green}Jumlah Spam (cth: 5): ${reset}"; read jumlah

    echo -e "${cyan}Mengirim Spam Report ke $target sebanyak $jumlah..."
    sleep 1

    for ((i=1; i<=$jumlah; i++))
    do
        curl -s -X POST "https://api.whatsapp-report.com/report" \
        -H "Content-Type: application/json" \
        -d "{\"phone\":\"$target\",\"reason\":\"spam\"}"
        echo -e "${red}[$i] Report dikirim ke $target"
        sleep 1
    done

    echo -e "${green}Selesai Spam Report!"
    exit

elif [[ $pil == "2" ]]; then
    clear
    echo -e "${yellow}Memutar Lagu Sad - Kamin...\n"
    sleep 2
    echo -e "${cyan}Lirik:\n"
    sleep 1
    echo -e "🎵 Kamin - Sad Vibes"
    echo -e "-------------------------"
    echo -e "Aku berjalan sendiri..."
    sleep 2
    echo -e "Tanpa arah, tanpa suara..."
    sleep 2
    echo -e "Kenangan itu datang lagi..."
    sleep 2
    echo -e "Membuat hati ini runtuh..."
    sleep 2
    echo -e "Kamin... hanya bayangmu..."
    sleep 2
    echo -e "Yang tersisa dalam hampa..."
    echo -e "-------------------------"
    echo -e "${green}Lagu selesai..."

else
    echo -e "${red}Pilihan tidak valid!"
fi
