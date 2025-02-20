*** Settings ***
Resource  ../../Auto/Configs/Packages.resource

*** Keywords ***

Deve conter o título do site
    Title Should Be    QAZANDO Shop E-Commerce
    Sleep    5s

Aguardar o elemento de texto cilcavel esteja visivel
    Wait Until Element Is Visible    xpath=//a[contains(.,'Cadastro')]

Deve poder clilcar no texto clicavel
    Click Element    xpath=//a[contains(.,'Cadastro')]

Validando se a tela é a correta Titulo da Pagina
    Wait Until Element Contains    xpath=//h3[contains(.,'Cadastro de usuário')]    Cadastro de usuário

Aguardar o elemento do campo Nome ficar visível
   Wait Until Element Is Visible    xpath=//input[contains(@id,'user')]  10s

Deve poder digitar no campo Nome
    Input Text    xpath=//input[contains(@id,'user')]    João da Silva

Deve poder digitar no campo email
    Input Text    xpath=//input[contains(@id,'email')]   0Y4YU@example.com
Deve poder digitar no campo senha
    Input Text    xpath=//input[contains(@id,'password')]    123456
Deve poder clicar no botao cadastrar
    Click Element    xpath=//button[contains(@id,'btnRegister')]
Deve validar o sucesso do cadastro
    Wait Until Element is Visible    xpath=//h2[@class='swal2-title'][contains(.,'Cadastro realizado!')]
    Element Text Should Be    xpath=//h2[@class='swal2-title'][contains(.,'Cadastro realizado!')]    Cadastro realizado!

