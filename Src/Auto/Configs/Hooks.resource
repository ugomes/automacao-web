*** Settings ***
Documentation    Aqui ficarão todas as funções de manipulação de navegador

Resource    Packages.resource
Resource    ../Variables/Var_globals.resource

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close All Browsers
