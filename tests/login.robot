*** Settings ***
Documentation    Testes da página login

Library   Browser

Resource    ../resources/base.robot

#Gancho para tirar screenshot após a execução de cada teste
Test Teardown  Take Screenshot

*** Test Cases ***
Login com sucesso
   [tags]      smoke
   Open Login Page
   Login With  papito@parodify.com  pwd123
   Logout Link Shoud Be Visible
   
Senha Incorreta
   Open Login Page  
   Login With  papito@parodify.com  abc123
   Alert Shoud Be      Opps! Dados de acesso incorretos!

Email não existe
   Open Login Page
   Login With  404@parodify.com  abc123  
   Alert Shoud Be      Opps! Dados de acesso incorretos!

Email não informado
   Open Login Page
   Login With  ${EMPTY}  abc123
   Alert Shoud Be      Opps! Dados de acesso incorretos!

Senha não informada
   Open Login Page  
   Login With  papito@parodify.com  ${EMPTY}
   Alert Shoud Be      Opps! Dados de acesso incorretos!

