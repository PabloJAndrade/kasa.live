*** Settings *** 
Documentation        Testes Para o Site Kasa.Live na pagina de favoritos 

Resource    ../resources/base.resource

Test Setup        Start session and create account
Test Teardown     Finish session And exclude account
*** Test cases ***
Favoritar partidas e navegar para a pagina favoritos
#Summary: Testa o cenario onde um usuario Favorita suas partidas
# Test name: FavoriteMatches
# Priority: 5
    [Tags]    FavoriteMatches
    
    Given the User choose the match to add in Favorites 
    When the user goes to favorites Page
    Then Assert that the match choose is on the Page

Desfavoritar partidas
#Summary: Testa o cenario onde um usuario retira uma partida dos Favoritos
# Test name: UnFavoriteMatches
# Priority: 5
    [Tags]    UnFavoriteMatches

    Given the User choose the match to add in Favorites 
    When the user goes to favorites Page
    Then the user can Disfavorite the match

Favoritar times
#Summary: Testa o cenario onde um usuario adiciona um time aos seus favoritos
# Test name: CanFavoriteTeams
# Priority: 3
    [Tags]    FavoriteTeams
     ${Team}    Set Variable    Sport Recife
     
    Given the user access the favorite page
    When the user can choose teams to favorite    ${Team}
    Then the user can choose teams to favorite

