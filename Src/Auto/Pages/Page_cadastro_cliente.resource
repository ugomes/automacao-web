*** Settings ***
Resource  ../../Auto/Configs/Packages.resource

*** Keywords ***

Deve conter o título do site
    Title Should Be    QAZANDO Shop E-Commerce
    Sleep    5s

Aguardar o elemento de texto clicavel esteja visivel
    Wait Until Element Is Visible    xpath=//a[contains(.,'Cadastro')]

Deve poder clicar no texto clicavel
    Click Element    xpath=//a[contains(.,'Cadastro')]

Validando se a tela é a correta Titulo da Pagina
    Wait Until Element Contains    xpath=//h3[contains(.,'Cadastro de usuário')]    Cadastro de usuário

Aguardar o elemento do campo Nome ficar visível
   Wait Until Element Is Visible    xpath=//input[contains(@id,'user')]  10s

Deve poder digitar no campo Nome
    Input Text    xpath=//input[contains(@id,'user')]    João da Silva

Deve poder digitar no campo email
    Wait Until Element Is Visible     xpath=//input[contains(@id,'email')]   10s
    Input Text    xpath=//input[contains(@id,'email')]   0Y4YU@example.com
Deve poder digitar no campo senha
    Input Text    xpath=//input[contains(@id,'password')]    123456
Deve poder clicar no botao cadastrar
    Wait Until Element Is Visible  xpath=//button[contains(@id,'btnRegister')]  10s
    Scroll Element Into View    xpath=//button[contains(@id,'btnRegister')]
    Click Button    xpath=//button[contains(@id,'btnRegister')]
Deve validar o sucesso do cadastro
    Wait Until Element is Visible    xpath=//h2[@class='swal2-title'][contains(.,'Cadastro realizado!')]
    Element Text Should Be    xpath=//h2[@class='swal2-title'][contains(.,'Cadastro realizado!')]    Cadastro realizado!
Validar a mensagem de erro do cadastro
    Wait Until Element Is Visible    xpath=//span[@class='errorLabel'][contains(.,'O campo nome deve ser prenchido')]  10s
    Element Text Should Be    xpath=//span[@class='errorLabel'][contains(.,'O campo nome deve ser prenchido')]    O campo nome deve ser prenchido

Validar a mensagem de erro do cadastro nome vazio
    Wait Until Element Is Visible    xpath=//span[@class='errorLabel'][contains(.,'O campo nome deve ser prenchido')]  10s
    Element Text Should Be    xpath=//span[@class='errorLabel'][contains(.,'O campo nome deve ser prenchido')]    O campo nome deve ser prenchido

Validar a mensagem de erro do cadastro senha vazia
    Wait Until Element Is Visible    xpath=//span[@class='errorLabel'][contains(.,'O campo senha deve ter pelo menos 6 dígitos')]  10s
    Element Text Should Be    xpath=//span[@class='errorLabel'][contains(.,'O campo senha deve ter pelo menos 6 dígitos')]   O campo senha deve ter pelo menos 6 dígitos

Validar a mensagem de erro do cadastro email vazio
  Wait Until Element Is Visible    xpath=//span[@class='errorLabel'][contains(.,'O campo e-mail deve ser prenchido corretamente')]
  Element Text Should Be           xpath=//span[@class='errorLabel'][contains(.,'O campo e-mail deve ser prenchido corretamente')]    O campo e-mail deve ser prenchido corretamente