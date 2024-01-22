*** Settings ***
Documentation    Ações, steps e elementos da funcionlaidade do teste da pagina favoritos
Library    Browser
*** Variables ***
${NomeDo1Time}
*** Keywords ***
#Actions para o teste de Favortios {
Given the User choose the match to add in Favorites 
    Click                            xpath=(//button[@aria-label='Favoritar Partida']//img)[1]

When the user goes to favorites Page
    Click                            xpath=//p[text()='Favoritos']
    
Then Assert that the match choose is on the Page    
    ${NomeDo1Time}    Get Text       xpath=(//div[@class="css-5prxxc"]//p[contains(.,'')]/following::p)[1]
    Log    ${NomeDo1Time}
    Wait for Elements State    xpath=(//p[@title='${NomeDo1Time}'])[1]   visible
    Get Text    xpath=(//p[@title='${NomeDo1Time}'])[1]    equals    ${NomeDo1Time}

Then the user can Disfavorite the match
    Click                            xpath=(//button[@aria-label='Favoritar Partida']//img)[1]
    Wait for Elements State    xpath=//p[text()='Sem resultados de busca para partidas ao vivo, seleção de melhores partidas, próximas partidas e partidas finalizadas.']    visible
    Take screenshot

Given the user access the favorite page
     Click                            xpath=//p[text()='Favoritos']
When the user can choose teams to favorite
    [Arguments]    ${Team}
    Click        xpath=//button[text()='Favoritar']
    Fill Text    xpath=//input[@data-cy='input-search-teams']    ${Team}
    Wait for Elements State     xpath=//button[text()='Add']    visible    5
    Click        xpath=//button[text()='Add']

Then the user can choose teams to favorite
    Wait for Elements State    xpath=//button[@data-cy='btn-submit-teams']    visible    5
    Click        xpath=//button[@data-cy='btn-submit-teams']