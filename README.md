# 📰 Formulário de Inscrições

Formulário de inscrições para um evento esportivo.

Este projeto foi desenvolvido como parte do **Checkpoint 05** da disciplina **'Desenvolvimento Cross Platform'** ministrada pelo professor **Diego Camilo Martins Vieira**.

## 👨🏻‍🏫 Orientações do Checkpoint

Desenvolver um aplicativo em Flutter que implemente um formulário de inscrição em um evento esportivo, atendendo aos seguintes requisitos:

### 📝 Requisitos

#### Criação da Tela de Inscrição:
Deve conter os seguintes campos:
1. Campo de formulário para o nome do participante.
2. Campo de formulário para a idade do participante.
3. Um botão com o texto 'Inscrever'.

#### Validação dos Campos:
* **Nome do Participante:**
O nome deve ter pelo menos 5 caracteres.
* **Idade:**
A idade deve ser um número entre 18 e 60 anos.

#### Ação ao Clicar em 'Inscrever':
* O formulário deve ser validado.
* Se algum campo for inválido, as mensagens de erro apropriadas devem ser exibidas.
* Se todos os campos forem válidos, o app deve navegar para uma nova tela que exiba a mensagem: *"Inscrição confirmada! Bem-vindo(a), ${nomeDoParticipante}!"*, onde *nomeDoParticipante* é o nome preenchido no formulário.

#### Instruções Técnicas
1. O app deverá ter **duas telas**:
   * A primeira tela deve ser o **formulário de inscrição**.
   * A segunda tela deve exibir a **mensagem de confirmação**.
2. Utilizar **Form**, **TextFormField** com ```validator``` e **ElevatedButton** para implementar as funcionalidades.
3. Utilizar ```Navigator.push()``` para navegação entre telas.
