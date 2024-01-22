*** Settings *** 
Documentation        Testes Para o Site Kasa.Live na pagina de favoritos 

Resource    ../resources/base.resource

Test Setup        Start session and create account
Test Teardown     Finish session And exclude account
*** Test cases ***
Visita pagina melhores momentos
#Summary: Testa o cenario onde um usuario vai a pagina de melhores momentos
# Test name: BestMoments
# Priority: 5
    [Tags]    BestMoments

    Given the user goes to best moments Page 
    Then The user can view the content

