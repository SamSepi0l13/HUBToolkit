#!/bin/bash
clear

# Define as cores
VERDE='\e[32m'
VERMELHO='\e[31m'
RESET='\e[0m'

# Define as linhas de texto
LINE1="${RED}  ██╗  ██╗██╗   ██╗██████╗     ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗${RESET}"
LINE2="${RED}  ██║  ██║██║   ██║██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝${RESET}"
LINE3="${RED}  ███████║██║   ██║██████╔╝       ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║   ${RESET}"
LINE4="${RED}  ██╔══██║██║   ██║██╔══██╗       ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║   ${RESET}"
LINE5="${RED}  ██║  ██║╚██████╔╝██████╔╝       ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║   ${RESET}"
LINE6="${RED}  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝        ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝   ${RESET}"

LINE7="${RESET}                                                        ╚════ release: 1.3 ════╝${RESET}"


# Função para exibir cada linha uma por uma
print_lines() {
    for linha in "$@"; do
        echo -e "$linha"
        sleep 0.05 # Tempo de espera reduzido
    done
}

# Exibe as linhas com efeito de loading
print_lines "$LINHA1" "$LINHA2" "$LINHA3" "$LINHA4" "$LINHA5" "$LINHA7"

# Logs de aplicação
LOG="/var/log/hub.log"

echo -e " ${RESET}Escolha uma opção:${RESET}"
echo -e "╔═══════════════════════════════════════════════════════════════╗"
echo -e "║ \e[31m[1]\e[0m Instalar Exemplo1                                         ║"
echo -e "║ \e[31m[2]\e[0m Instalar Exemplo2                                         ║"
echo -e "║ \e[31m[3]\e[0m Instalar Exemplo3                                         ║"
echo -e "║ \e[31m[4]\e[0m Instalar Exemplo4                                         ║"
echo -e "║ \e[31m[5]\e[0m Instalar Exemplo5                                         ║"
echo -e "║ \e[31m[6]\e[0m Instalar Exemplo6                                         ║"
echo -e "║ \e[31m[7]\e[0m Instalar Exemplo7                                         ║"
echo -e "║ \e[31m[x]\e[0m Sair                                                      ║"
echo -e "╚═══════════════════════════════════════════════════════════════╝"
echo -e "\n${VERMELHO}Script desenvolvido por SamSepi0l13${RESET}\n"

# Define URLs para exemplos
URL1="link_para_exemplo1"
URL2="link_para_exemplo2"
URL3="link_para_exemplo3"
URL4="link_para_exemplo4"
URL5="link_para_exemplo5"
URL6="link_para_exemplo6"
URL7="link_para_exemplo7"

# Função geral de instalação
instala_exemplo() {
    local url=$1
    wget "$url" -O exemplo.sh >> "$LOG" 2>&1
    if [ $? -ne 0 ]; then
        echo -e "\e[31mErro ao baixar o arquivo. Verifique o log para mais detalhes.\e[0m"
        return 1
    fi
    chmod +x exemplo.sh
    if [ $? -ne 0 ]; then
        echo -e "\e[31mErro ao dar permissão ao arquivo. Verifique o log para mais detalhes.\e[0m"
        return 1
    fi
    ./exemplo.sh
    if [ $? -ne 0 ]; then
        echo -e "\e[31mErro ao executar o arquivo. Verifique o log para mais detalhes.\e[0m"
        return 1
    fi
    return 0
}

# Loop do menu
while true; do
    show_menu

    read -p "Opção: " opcao

    case $opcao in
        1)
            instala_exemplo "$URL1"
            ;;
        2)
            instala_exemplo "$URL2"
            ;;
        3)
            instala_exemplo "$URL3"
            ;;
        4)
            instala_exemplo "$URL4"
            ;;
        5)
            instala_exemplo "$URL5"
            ;;
        6)
            instala_exemplo "$URL6"
            ;;
        7)
            instala_exemplo "$URL7"
            ;;
        x)
            exit 0
            ;;
        *)
            echo -e "\e[31mOpção inválida. Tente novamente.\e[0m"
            ;;
    esac

    read -p "Pressione Enter para continuar..."
    clear
done
