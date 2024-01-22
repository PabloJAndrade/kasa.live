*** Settings ***
Documentation    Ações, steps e elementos da funcionlaidade do teste da pagina melhores momentos
Library    Browser
*** Keywords ***
#Actions para o teste da pagina de melhroes momentos{
Given the user goes to best moments Page 
    Click            xpath=//p[text()='Melhores momentos']
    
Then The user can view the content
    Wait for Elements State    xpath=//div[@class='css-g0nprg']/following-sibling::div[1]    visible    timeout=30s
