*** Settings ***
Documentation    Ações, steps e elementos da funcionlaidade do teste da pagina calendario
Library    Browser
*** Variables ***
${NomeDo1Time}
*** Keywords ***
#Actions para o teste da pagina calendario {
Given the User mark matchs on the calendar
    Click    xpath=(//button[@aria-label='Adicionar ao calendário']//img)[1]
    ${NomeDo1Time}    Get Text       xpath=(//div[@class="css-5prxxc"]//p[contains(.,'')]/following::p)[1]
    Set Global Variable    ${NomeDo1Time} 
When the user go to calendar Page 
    Click    xpath=//p[text()='Calendário']

Then The user can view the matchs on calendar
    Wait for Elements State    xpath=(//p[@title='${NomeDo1Time}'])[1]    visible    10
