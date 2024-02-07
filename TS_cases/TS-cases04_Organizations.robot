*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  Dialogs
Resource  ../keywords.robot
Resource  ../Repositories/buttons_repository.robot
Resource  ../Repositories/images_repository.robot

*** Variables ***
${ChromeBrowser}  Chrome
${URL}  https://www.krelov.cz
${NewURL}

*** Test Cases ***
Pre-conditions
    Pre Condition Open Browser  ${ChromeBrowser}  ${URL}  ${Button_MainPage_Menu_Toggler_XPath}  0.2  ${Button_MainPage_Accept_Cookie_XPath}
    Maximize Browser Window
    Navigate To Topic In DropDown Menu  Sokol  ${Button_MainPage_Header_Menu_Option6_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option6_XPath}  ${H1_Alternative_Name_Of_Topic_XPath}

TC_04_01-OrganizationsPage_Sokol_Links_In_Text
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Link_In_Text_1_XPath}  Organizations_Sokol_Link1.png  ${NewURL}
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Link_In_Text_2_XPath}  Organizations_Sokol_Link2.png  ${NewURL}
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Link_In_Text_3_XPath}  Organizations_Sokol_Link3.png  ${NewURL}

TC_04_02-OrganizationsPage_Sokol_Footer_Links
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Footer_Link1_XPath}  Organizations_Sokol_FooterLink1.png  ${NewURL}
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Footer_Link2_XPath}  Organizations_Sokol_FooterLink2.png  ${NewURL}
    Check And Click Link To New Page  ${Button_OrganizationsPage_Sokol_Footer_Link3_XPath}  Organizations_Sokol_FooterLink3.png  ${NewURL}

TC_04_03-OrganizationsPage_Sokol_Text_In_Paragraphs
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Sokol_Body1_XPath}  Tělocvičná
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Sokol_Body3_XPath}  členů
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Sokol_Body5_XPath}  hřiště

TC_04_04-OrganizationsPage_Farnost_Images
    Navigate To Topic In DropDown Menu  farnost  ${Button_MainPage_Header_Menu_Option6_DropItem_Church_XPath}  ${Button_MainPage_Header_Menu_Option6_XPath}  ${H1_Alternative_Name_Of_Topic_XPath} 
    Check Image  ${Image_OrganizationPage_Church1_XPath}
    Check Image  ${Image_OrganizationPage_Church2_XPath}
    Check Image  ${Image_OrganizationPage_Church3_XPath}

TC_04_05-OrganizationsPage_Farnost_Links
    Check And Click Button  ${Button_OrganizationsPage_Church_Link1_XPath}  ${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button1_XPath}  Historie
    Check And Click Button  ${Button_OrganizationsPage_Church_Link2_XPath}  ${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button2_XPath}  Bohoslužby
    Check And Click Button  ${Button_OrganizationsPage_Church_Link3_XPath}  ${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button3_XPath}  Kontakt
    Check And Click Button  ${Button_OrganizationsPage_Church_Link4_XPath}  ${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button4_XPath}  Jiljí

TC_04_06-OrganizationsPage_Farnost_Text
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Church_Body1_XPath}  zmínky
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Church_Body2_XPath}  Středa
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_Church_Body3_XPath}  poustevník

TC_04_07-OrganizationsPage_FireFighters_Images
    Navigate To Topic In DropDown Menu  hasičů  ${Button_MainPage_Header_Menu_Option6_DropItem_FireFighters_XPath}  ${Button_MainPage_Header_Menu_Option6_XPath}  ${H1_Alternative_Name_Of_Topic_XPath} 
    Check Image  ${Image_OrganizationPage_Firefighters1_XPath}
    Check Image  ${Image_OrganizationPage_Firefighters2_XPath}
    Check Image  ${Image_OrganizationPage_Firefighters3_XPath}

TC_04_08-OrganizationsPage_FireFighters_Text
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_FireFighters_Body1_XPath}  SDH
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_FireFighters_Body2_XPath}  Sbor
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_FireFighters_Body3_XPath}  historie

TC_04_09-OrganizationsPage_KungFu_Links
    Navigate To Topic In DropDown Menu  kung-fu  ${Button_MainPage_Header_Menu_Option6_DropItem_KungFu_XPath}  ${Button_MainPage_Header_Menu_Option6_XPath}  ${H1_Alternative_Name_Of_Topic_XPath} 
    Mouse Over Link  ${Button_OrganizationsPage_KungFu_Link1_XPath}
    Mouse Over Link  ${Button_OrganizationsPage_KungFu_Link2_XPath}
    Mouse Over Link  ${Button_OrganizationsPage_KungFu_Link3_XPath}

TC_04_10-OrganizationsPage_KungFu_Text
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_KungFu_Body1_XPath}  vývojem
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_KungFu_Body2_XPath}  čínské
    Paragraph Should Contain Word  ${Paragraph_OrganizationsPage_KungFu_Body3_XPath}  autobusem

Post-conditions
    Post Condition Close Browser  Screenshot_Organizations.png  2