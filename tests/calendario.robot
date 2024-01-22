*** Settings *** 
Documentation        Testes Para o Site Kasa.Live na pagina de favoritos 

Resource    ../resources/base.resource

Test Setup        Start session and create account
Test Teardown     Finish session And exclude account
*** Test cases ***
Marca partidas no calendario do site kasa.live
#Summary: Testa o cenario onde um usuario marca suas partidas no calendario do site
# Test name: MarkMatchesOnTheCalendar
# Priority: 5
    [Tags]    MarkMatchesOnTheCalendar
    
    Given the User mark matchs on the calendar
    When the user go to calendar Page 
    Then The user can view the matchs on calendar

