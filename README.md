# HUBToolkit

Este script em Bash facilita a instalação de vários programas de forma automatizada em ambiente de servidor.


![github](https://github.com/SamSepi0l13/HUBToolkit/assets/134660568/dbc4c082-1b12-40cb-86fb-c5aa03d80d7f)

## Roteiro para integrar o script `hub.sh` em ambientes Ansible e Puppet

O script `hub.sh` pode ser facilmente integrado em ambientes Ansible e Puppet para automatizar a instalação de diversos exemplos de projetos em seus servidores. Abaixo, apresento um roteiro detalhado para cada ferramenta:

**Integração com Ansible:**

1. **Crie um playbook Ansible:**
    * Armazene o script `hub.sh` em um diretório acessível ao seu playbook Ansible.
    * Crie um playbook Ansible com as seguintes tarefas:
        * **Tarefa 1:** Copie o script `hub.sh` para o servidor remoto:
            ```yaml
            - name: Copy hub.sh script to remote server
              copy:
                src: /path/to/hub.sh
                dest: /path/to/desired/location/on/remote/server
                owner: root
                group: root
                mode: 0755
            ```
        * **Tarefa 2:** Atribua permissão de execução ao script:
            ```yaml
            - name: Grant execution permission to hub.sh
              command: chmod +x /path/to/hub.sh/on/remote/server
            ```
        * **Tarefa 3:** Execute o script com a opção desejada:
            ```yaml
            - name: Execute hub.sh with selected option
              shell: /path/to/hub.sh/on/remote/server {{ option }}
            ```
            Substitua `{{ option }}` pela opção desejada (por exemplo, `1` para instalar o Exemplo 1).

2. **Execute o playbook:**
    * Utilize o comando `ansible-playbook` para executar o playbook, especificando o inventário de seus servidores:
        ```bash
        ansible-playbook hub.yml -i hosts.yml
        ```
        Substitua `hub.yml` pelo nome do seu playbook e `hosts.yml` pelo nome do seu arquivo de inventário.

**Integração com Puppet:**

1. **Crie um módulo Puppet:**
    * Crie um módulo Puppet que inclua as seguintes funcionalidades:
        * Copiar o script `hub.sh` para o servidor gerenciado.
        * Atribuir permissão de execução ao script.
        * Executar o script com a opção desejada.
    * Utilize os recursos do Puppet para gerenciar o ciclo de vida do script e sua execução.

2. **Aplique o módulo Puppet:**
    * Inclua o módulo Puppet em seu manifesto Puppet e aplique-o aos seus servidores gerenciados.

**Observações:**

* Certifique-se de ajustar os caminhos e permissões de acordo com seu ambiente específico.
* Utilize as melhores práticas de segurança ao executar scripts em seus servidores.
* Consulte a documentação oficial do Ansible e Puppet para obter mais informações sobre como criar playbooks e módulos.

**Benefícios da Integração:**

* **Automação:** O script `hub.sh` automatiza a instalação de diversos exemplos de projetos, economizando tempo e esforço.
* **Consistência:** A integração com Ansible e Puppet garante que a instalação seja realizada de forma consistente em todos os seus servidores.
* **Gerenciamento Centralizado:** Você pode gerenciar a instalação e atualização dos exemplos a partir de um único local.

Ao integrar o script `hub.sh` em seus ambientes Ansible e Puppet, você otimiza o processo de instalação de diversos exemplos de projetos, aumenta a consistência e facilita o gerenciamento centralizado em seus servidores.


**Observações**

* Certifique-se de ter lido e compreendido os scripts de instalação dos exemplos antes de executá-los.
* O uso deste script é de sua responsabilidade. O desenvolvedor não se responsabiliza por danos causados ​​por sua utilização indevida.
