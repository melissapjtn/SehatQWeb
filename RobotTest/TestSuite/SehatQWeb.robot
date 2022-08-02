*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ${locator} = //[id='ok-check'] 
${registrasion}        https://account.sehatq.com/daftar/email
${link}                https://account.sehatq.com/login
${login}               xpath=//button[contains(text(),'Login')]
${passwordR}           xpath=//body/div[@id='__next']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[3]/div[1]/label[1]/input[1]
${passwordL}           xpath=//body/div[@id='__next']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[1]/label[1]/input[1]
${pilihFoto}           xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div[2]/div[1]/div/div/label/button
${foto}                xpath=//*[@id="__next"]/div[2]/div[2]/div[2]/div[2]/a
${simpan}              xpath=//button[contains(text(),'Simpan')]
${icon}                xpath=//*[@id="popover-profile"]/div[1]/img
${profil}              xpath=//*[@id="popover-profile"]/div[2]/div/a[1]


*** Test Cases ***
RegistrasiTestN1
    Open Browser       ${registrasion}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep              5
    Input Text         id=name    Yohana
    Input Text         id=email    yohanalubis@gmail.com
    Input Password     ${passwordR}   ber
    Click Element      xpath=//*[contains(text(),'Saya menyetujui')]
    Click Button       xpath=//button[contains(text(),'Daftar')]
    Sleep              5
    Capture Page Screenshot    
    Close Browser
    Log                Test Selesai
    
RegistrasiTestN2
    Open Browser    ${registrasion}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    5
    Input Text     id=name    Yohana
    Input Text     id=email    yohanalubis16@
    Input Password    ${passwordR}    berkembang1
    Click Element    xpath=//*[contains(text(),'Saya menyetujui')]
    Click Element    xpath=//button[contains(text(),'Daftar')]
    Sleep    5
    Close Browser
    Log    Test Selesai
    
RegistrasiTestN3
    Open Browser    ${registrasion}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    5
    Input Text     id=name    Yohana
    Input Text     id=email    panjaitanmelissa95
    Input Password    ${passwordR}    ber
    Click Element    xpath=//*[contains(text(),'Saya menyetujui')]
    Click Element    xpath=//button[contains(text(),'Daftar')]
    Sleep    5
    Close Browser
    Log    Test Selesai
    
RegistrasiTest
    # data perlu diupdate jira ingin di run
    Open Browser    ${registrasion}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    5
    Input Text     id=name    Yohana
    Input Text     id=email    yohanalubis@gmail.com
    Input Password    ${passwordR}    yohana1234
    Click Element    xpath=//*[contains(text(),'Saya menyetujui')]
    Click Element    xpath=//button[contains(text(),'Daftar')]
    Sleep    5
    Close Browser
    Log    Test Selesai
    
    
LoginTestN1
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmail
    Input Password    ${passwordL}    berkembang1
    Click Element    ${login}
    Sleep    5
    Close Browser
    Log    Test SelesaiLoginTest
    
LoginTestN11
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    # Input Text     id=email      
    Input Password    ${passwordL}    berkembang1
    Click Element    ${login}
    Sleep    5
    Close Browser
    Log    Test SelesaiLoginTest
    
LoginTestN2
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmail.com
    Input Password    ${passwordL}    berkemb
    Click Element    ${login}
    Sleep    5
    Close Browser
    Log    Test Selesai
    
LoginTestN3
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmai
    Input Password    ${passwordL}    berkemb
    Click Element    ${login}
    Sleep    5
    Close Browser
    Log    Test Selesai
    
LoginTest
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmail.com
    Input Password    ${passwordL}    berkembang1
    Click Element    ${login}
    Sleep    5
    Close Browser
    Log    Test Selesai
    
EditProfilTestN1
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmail.com
    Input Password    ${passwordL}    berkembang1
    Click Element    ${login}
    Sleep    5
    Click Element    ${icon}    
    Click Element    ${profil}
    Wait Until Element Is Visible  ${foto}  timeout=5
    Click Element    ${foto}
    Wait Until Element Is Visible     ${pilihFoto}  timeout=5
    Choose File    //*[@id="logo-image"]    C:\\Users\\IDstar\\OneDrive\\Gambar\\Word.docx
    Sleep    5
    Click Element    ${simpan}
    Close Browser
    Log    Test Selesai
    
EditProfilTestP1
    Open Browser    ${link}    chrome
    SeleniumLibrary.Maximize Browser Window
    Sleep    10
    Input Text     id=email    panjaitanmelissa95@gmail.com
    Input Password    ${passwordL}    berkembang1
    Click Element    ${login}
    Sleep    5
    Click Element    ${icon}    
    Click Element    ${profil}
    Wait Until Element Is Visible  ${foto}  timeout=5
    Click Element    ${foto}
    Wait Until Element Is Visible     ${pilihFoto}  timeout=5
    Choose File    //*[@id="logo-image"]    C:\\Users\\IDstar\\OneDrive\\Gambar\\Logo.jpg
    Sleep    5
    Click Element    ${simpan}
    Close Browser
    Log    Test Selesai
    
    


