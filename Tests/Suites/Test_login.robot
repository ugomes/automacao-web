*** Settings ***
Documentation    Aqui ficarão todos os cenários

Resource    ../../Src/Auto/Pages/Page_login.resource
Resource    ../../Src/Auto/Configs/Hooks.resource


Test Setup    Abrir Navegador

Test Teardown  Fechar Navegador

*** Test Cases ***

Cenário de teste 01: Validando Login
    [Tags]    Validar_Login
   Clicar em login
   Digitar o email no campo de email
   Digitar senha no campo senha
   Clicar no botão login
   Validar login

Cenario de teste 02: Validando mensagem de erro de Login todos campos vazios
    [Tags]    Validar_mensagem_de_erro_de_login
    Clicar em login
    Clicar no botão login
    Validar Mensagem de erro de Login todos campos vazios

Cenario de teste 03: Validando mensagem de erro de Login com campo senha vazio
    [Tags]    Validar_mensagem_de_erro_de_login_com_campo_senha_vazio
    Clicar em login
    Digitar o email no campo de email
    Clicar no botão login
    Validar Mensagem de erro de Login com campo senha vazio

Cenario de teste 04: Validando mensagem de erro de Login com campo email vazio
    [Tags]    Validar_mensagem_de_erro_de_login_com_campo_email_vazio
    Clicar em login
    Digitar senha no campo senha
    Clicar no botão login
    Validar Mensagem de erro de Login com campo email vazio


