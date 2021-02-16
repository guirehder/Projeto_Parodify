***Settings***
Documentation       Ações da página categoria


***Keywords***

Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Wait For Elements State    xpath=//h2[contains(text(), "Música")]      visible     10 