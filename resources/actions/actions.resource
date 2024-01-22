*** Settings ***
Documentation    Ações, steps e elementos da funcionlaidade do teste da pagina inicial e perfil do usuario
Library    Browser
*** Variables ***
${NomeDo1Time}
*** Keywords ***

#Actions para o teste de cadastro e login {
Given the user goes to singup page
        Wait For Elements State    xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]    visible    5
        Click                      xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]
        

When the singup form is fill
    [Arguments]    ${userName}    ${userEmail}    ${userPassword}
        Click                      xpath=//div//button[contains(@data-cy,'login-createAccount')]
        Fill text                  css=input[name=name]               ${userName}
        Fill Text                  css=input[name=email]              ${userEmail}
        Fill Text                  css=input[name=password]           ${userPassword}
        Fill Text                  css=input[name=confirmPassword]    ${userPassword}
        Click                      xpath=//div//button[contains(@data-cy,'register-submit')]

And the user logout from account
        Wait For Elements State    xpath=//div[@class="Toastify"]/child::div    visible
        Click                      xpath=//div[@class="Toastify"]/child::div
        Click                      xpath=//div[contains(@data-cy,'btn-trigger-profile')]
        Click                      xpath=//div//button[contains(@data-cy,'btn-logout-profile')]

Then login in the account
    [Arguments]    ${userEmail}    ${userPassword}
    
        Click                      xpath=//div//button[contains(@data-cy,'btn-trigger-profile')]
        Fill Text                  css=input[name=email]              ${userEmail}
        Fill Text                  css=input[name=password]           ${userPassword}
        Click                      xpath=//div//button[contains(@data-cy,'login-submit')]
        Wait for Elements State    xpath=//div/a[@data-cy="link/favoritos"]    visible

#} Fim das actions do teste de cadastro e login
#============================================================================================
#Actions para a ferramenta de busca{
Given the user make a search for a team
    [Arguments]    ${Team}
    Fill Text                  css=input[id="filter-team"]    ${Team}
    Press keys    enter
    Click    xpath=(//p[text()='${Team}'])[1]

Then confirm the search resultados
    [Arguments]    ${Team}
    Wait for Elements State    xpath=(//p[@title='${Team}'])[1]    visible