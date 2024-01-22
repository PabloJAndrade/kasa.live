*** Settings *** 
Documentation        Testes Para o Site Kasa.Live para a função de criar conta e login

Resource    ../resources/base.resource

Test Setup        Start session
Test Teardown     Finish session And exclude account
*** Test cases ***
Criando uma nova conta, realizando logout e apagando a conta
#Summary: Testa o cenario onde um usuario cria uma conta nova, realiza logout, login e exclui a conta
# Test name: CreateAnNewAccountAndExclude
# Priority: 5
    [Tags]    CreateAnNewAccountAndExclude
    ${userName}         Set Variable    teste
    ${userEmail}        Set Variable    teste@teste.broken.com
    ${userPassword}     Set Variable    teste123

    Given the user goes to singup page
    When the singup form is fill    ${userName}    ${userEmail}    ${userPassword}
    And the user logout from account
    Then login in the account    ${userEmail}    ${userPassword}  

Busca por um time na barra de pesquisa
#Summary: Testa o cenario onde um usuario pesquisa por um time
# Test name: SearchForTeam
# Priority: 5
    [Tags]    SearchForTeam
    ${Team}    Set Variable    Sport Recife    
    
    Given the user make a search for a team    ${Team}
    Then confirm the search resultados    ${Team}