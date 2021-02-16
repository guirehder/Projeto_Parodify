***Settings***
Documentation       Ações da página logada

***Variables***
${LOGOUT_LINK}      css=a[href$=sign_out]


***Keywords***
Logout Link Shoud Be Visible
    Wait For Elements State    css=a[href$=sign_out]      visible     10

Do Logout   
    Click       ${LOGOUT_LINK}

Go To Search Page
    Click       css=a[href*="search"]
    Wait For Elements State    xpath=//h2[contains(text(), "Buscar")]      visible     10