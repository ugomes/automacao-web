*** Settings ***
Documentation    Aqui ficarão todos os cenários

Resource    ../../Src/Auto/Pages/Page_cadastro_cliente.resource
Resource    ../../Src/Auto/Configs/Hooks.resource


Test Setup    Abrir Navegador

Test Teardown  Fechar Navegador

*** Test Cases ***

Cenário de teste 01: Validando Home Page
    [Tags]    Validar_title_da_page
    Deve conter o título do site

Cenário de teste 02: Cadstrando Usuario com dados validos
    [Tags]    Validar_cadastro_com_dados_validos
    Deve conter o título do site
    Aguardar o elemento de texto clicavel esteja visivel
    Deve poder clicar no texto clicavel
    Validando se a tela é a correta Titulo da Pagina
    Aguardar o elemento do campo Nome ficar visível
    Deve poder digitar no campo Nome
    Deve poder digitar no campo email
    Deve poder digitar no campo senha
    Deve poder clicar no botao cadastrar
    Deve validar o sucesso do cadastro

Cenário de teste 03: Validando cadastro todos campos vazios
    [Tags]    Validar_cadastro
    Aguardar o elemento de texto clicavel esteja visivel
    Deve poder clicar no texto clicavel
    Deve poder clicar no botao cadastrar
    Validar a mensagem de erro do cadastro

Cenário de teste 04: Validando cadastro com campo nome vazio
    [Tags]    Validar_cadastro_com_campo_nome_vazio
    Aguardar o elemento de texto clicavel esteja visivel
    Deve poder clicar no texto clicavel
    Deve poder digitar no campo email
    Deve poder digitar no campo senha
    Deve poder clicar no botao cadastrar
    Validar a mensagem de erro do cadastro nome vazio

Cenário de teste 05: Validando cadastro com campo email vazio
    [Tags]    Validar_cadastro_com_campo_email_vazio
    Aguardar o elemento de texto clicavel esteja visivel
    Deve poder clicar no texto clicavel
    Aguardar o elemento do campo Nome ficar visível
    Deve poder digitar no campo nome
    Deve poder digitar no campo senha
    Deve poder clicar no botao cadastrar
    Validar a mensagem de erro do cadastro email vazio

Cenário de teste 06: Validando cadastro com campo senha vazia
    [Tags]    Validar_cadastro_com_campo_senha_vazia
    Aguardar o elemento de texto clicavel esteja visivel
    Deve poder clicar no texto clicavel
    Aguardar o elemento do campo Nome ficar visível
    Deve poder digitar no campo nome
    Deve poder digitar no campo email
    Deve poder clicar no botao cadastrar
    Validar a mensagem de erro do cadastro senha vazia