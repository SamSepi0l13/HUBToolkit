# HUBToolkit

Este script em Bash facilita a instalação de vários programas de forma automatizada em ambiente de servidor.


![github](https://github.com/SamSepi0l13/HUBToolkit/assets/134660568/dbc4c082-1b12-40cb-86fb-c5aa03d80d7f)

## README para o script hub.sh

**Descrição**

Este script bash, chamado `hub.sh`, oferece uma interface simples para instalar diversos exemplos de projetos. Ele utiliza um menu interativo para facilitar a escolha do exemplo desejado e automatiza o processo de download e execução dos scripts de instalação.

**Funcionalidades**

* Menu interativo para seleção de exemplos
* Download automático dos scripts de instalação
* Execução dos scripts de instalação
* Registro de logs para acompanhamento das operações
* Interface amigável com cores e efeitos visuais

**Requisitos**

* Sistema operacional Linux
* Permissão de execução para o script `hub.sh`
* Conexão com a internet

**Instalação**

1. Salve o código do script `hub.sh` em um arquivo local.
2. Atribua permissão de execução ao script:

```bash
chmod +x hub.sh
```

3. Execute o script:

```bash
./hub.sh
```

**Uso**

1. Siga as instruções no menu interativo para escolher o exemplo que deseja instalar.
2. Pressione Enter para confirmar sua escolha.
3. O script baixará e executará automaticamente o script de instalação do exemplo selecionado.
4. O log da operação será registrado em `/var/log/hub.log`.

**Contribuição**

É possível adicionar novos exemplos ao script modificando o código e atualizando as variáveis ​​`URL1` a `URL7` com os links para os respectivos scripts de instalação.

**Suporte**

Em caso de dúvidas ou problemas com o script, entre em contato com o desenvolvedor: SamSepi0l13.

**Observações**

* Certifique-se de ter lido e compreendido os scripts de instalação dos exemplos antes de executá-los.
* O uso deste script é de sua responsabilidade. O desenvolvedor não se responsabiliza por danos causados ​​por sua utilização indevida.
