#!/usr/bin/env bash
sudo ls
cd ..
cd ZEZO
rm -rf "luarocks-2.2.2"
wget "https://valtman.name/files/telegram-cli-1222"
reset
echo -e "\e[38;5;77m     »»     Welcome to install ZEZO     ««\e[0m"
echo -e "\e[38;5;77m       »»     Install ZEZO [97%]     ««\e[0m"
mv telegram-cli-1222 tg
reset

echo -e "\e[38;5;77m     »»     Welcome to install ZEZO     ««\e[0m"
echo -e "\e[38;5;77m       »»     Install ZEZO [100%]     ««\e[0m"
echo -e "\27[34m     »»     ZEZO Channel ; @ZEZOTeam     ««\e[0m"
chmod +x tg
chmod +x ts
chmod +x TsAu
./ts
