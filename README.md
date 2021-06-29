Setup utilizando Terraform e Ansible. Nesse projeto, nós criamos uma instancia com webserver nginx para um site estático, configurado com ansible.

Comandos Terraform.:

terraform init - para inicializar

terraform plan - para visualizar o plan do projeto e modificações

terraform apply - para deployar o projeto

terraform destroy - para destruir todo o projeto.

Para rodar o ansible e realizar a instalação do webserver.

ansible-playbook playbook.yml