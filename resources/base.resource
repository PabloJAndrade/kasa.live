*** Settings ***
Documentation    Arquivo principal dos testes

Library    Browser
Resource    actions/actions.resource
Resource    actions/Favorito.resource
Resource    actions/calendario.resource
Resource    actions/melhores_momentos.resource

*** Keywords ***
Start session
  New Browser    browser=chromium    headless=False
  New Page    https://www.kasa.live/
  Wait For Elements State    xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]    visible    5

Start session and create account
  New Browser    browser=chromium    headless=False
  New Page    https://www.kasa.live/
  Wait For Elements State    xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]    visible    5
  Create account
  
Finish session And exclude account
    Click                      xpath=//div[contains(@data-cy,'btn-trigger-profile')]
    Click                      xpath=//div//button[contains(@data-cy,'btn-delete-profile')]
    Click                      xpath=//button[@data-cy='alert-dialog-submit']
    Wait For Elements State    xpath=//div[@class="Toastify"]/child::div    visible

Create account
    ${userName}         Set Variable    teste
    ${userEmail}        Set Variable    teste@teste.broken.com
    ${userPassword}     Set Variable    teste123
        Click                      xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]
        Click                      xpath=//div//button[contains(@data-cy,'login-createAccount')]
        Fill text                  css=input[name=name]               ${userName}
        Fill Text                  css=input[name=email]              ${userEmail}
        Fill Text                  css=input[name=password]           ${userPassword}
        Fill Text                  css=input[name=confirmPassword]    ${userPassword}
        Click                      xpath=//div//button[contains(@data-cy,'register-submit')]

Login user
    ${userEmail}        Set Variable    teste@teste.broken.com
    ${userPassword}     Set Variable    teste123
    Click                      xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]
    Fill Text                  css=input[name=email]              ${userEmail}
    Fill Text                  css=input[name=password]           ${userPassword}
    Click                      xpath=//div//button[contains(@data-cy,'login-submit')]
