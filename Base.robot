***Settings***
Library          SeleniumLibrary

***Variables***
${BTN_LOGIN}                     Xpath://*[@id="navbar"]/ul/li[5]/a
${CMP_E-mail}                    Id:email   
${CMP_SENHA}                     Id:senha
${CHK_LEMBRE}                    Xpath:/html/body/main/div[2]/div/div/form/div[3]/label/input
${BTN_ENTRAR}                    Id:btn_login

***Keywords***
Dado Que Acesso O Sistema

    Open Browser                https://qaninja.academy       chrome
    Maximize Browser Window
    Page Should Contain         Cursos

Quando Efetuo O Login

    Click Element               ${BTN_LOGIN} 
    Page Should Contain         Acesse sua conta
    Input Text                  ${CMP_E-mail}              githubteste123@gmail.com
    Input Text                  ${CMP_SENHA}               12345678
    Select Checkbox             ${CHK_LEMBRE}              
    Click Element               ${BTN_ENTRAR}  
    Page Should Contain         Configurações do Perfil

Então Finalizo O Login

    Close Browser   

