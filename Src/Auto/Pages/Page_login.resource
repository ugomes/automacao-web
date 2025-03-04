*** Settings ***
Resource  ../../Auto/Configs/Packages.resource

*** Keywords ***
Clicar em login
   Wait Until Element Is Visible    xpath=//a[contains(.,'Login')]
   Click Element    xpath=//a[contains(.,'Login')]

Digitar o email no campo de email
   Wait Until Element Is Visible    id=user     10s
   Input Text     id=user     testador@testador.com.br

Digitar senha no campo senha
   Wait Until Element Is Visible    id=password    10s
   Input Text     id=password    123456

Clicar no botão login
   Wait Until Element Is Visible    xpath=//button[contains(@id,'btnLogin')]  10s
   Click Element    xpath=//button[contains(@id,'btnLogin')]


Validar login
   Wait Until Element Is Visible    id=swal2-title    10s
   Element Text Should Be    id=swal2-title    Login realizado

Validar Mensagem de erro de Login todos campos vazios
  Wait Until Element Is Visible  xpath=//span[@class='invalid_input'][contains(.,'E-mail inválido.')]  10s
  Element Text Should Be  xpath=//span[@class='invalid_input'][contains(.,'E-mail inválido.')]  E-mail inválido.


Validar Mensagem de erro de Login com campo senha vazio
  Wait Until Element Is Visible  xpath=//span[@class='invalid_input'][contains(.,'Senha inválida.')]  10s
  Element Text Should Be  xpath=//span[@class='invalid_input'][contains(.,'Senha inválida.')]  Senha inválida.

Validar Mensagem de erro de Login com campo email vazio
  Wait Until Element Is Visible  xpath=//span[@class='invalid_input'][contains(.,'E-mail inválido.')]  10s
  Element Text Should Be  xpath=//span[@class='invalid_input'][contains(.,'E-mail inválido.')]  E-mail inválido.

Validar a mensagem de erro do cadastro senha vazia
  Wait Until Element Is Visible  xpath=//span[@class='errorLabel'][contains(.,'O campo senha deve ter pelo menos 6 dígitos')]  10s
  Element Text Should Be  xpath=//span[@class='errorLabel'][contains(.,'O campo senha deve ter pelo menos 6 dígitos')]  O campo senha deve ter pelo menos 6 dígitos