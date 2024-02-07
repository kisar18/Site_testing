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
    Navigate To Topic In DropDown Menu  kanalizace  ${Button_MainPage_Header_Menu_Option4_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option4_XPath}  ${H1_Name_Of_Topic_XPath}

TS_05_01-VillageDevelopmentPage_Sewerage_Form_Search
    Find Record In Form  Rozdělení  ${Input_VillageDevelopmentPage_Sewerage_Search_XPath}  Záznamy 1 - 1
    Find Record In Form  Seznam  ${Input_VillageDevelopmentPage_Sewerage_Search_XPath}  Záznamy 1 - 1
    Find Record In Form  Oznámení  ${Input_VillageDevelopmentPage_Sewerage_Search_XPath}  Záznamy 1 - 1

TS_05_02-VillageDevelopmentPage_Sewerage_Change_Form_Length
    Try Form Lengths

TS_05_03-VillageDevelopmentPage_Sewerage_Form_Archive
    Look To Archiv

TS_05_04-VillageDevelopmentPage_GrantPrograms_Form_Search
    Navigate To Topic In DropDown Menu  Dotační  ${Button_MainPage_Header_Menu_Option4_GrantPrograms_XPath}  ${Button_MainPage_Header_Menu_Option4_XPath}  ${H1_Name_Of_Topic_XPath}
    Find Record In Form  Výzva  ${Input_VillageDevelopmentPage_GrantPrograms_Search_XPath}  Záznamy 1 - 2
    Find Record In Form  Projekt  ${Input_VillageDevelopmentPage_GrantPrograms_Search_XPath}  Záznamy 1 - 1
    Find Record In Form  dokumentace  ${Input_VillageDevelopmentPage_GrantPrograms_Search_XPath}  Záznamy 1 - 1

TS_05_05-VillageDevelopmentPage_GrantPrograms_Texts
    Paragraph Should Contain Word  ${Paragraph_VillageDevelopmentPage_GrantPrograms_P1_XPath}  Podklady
    Paragraph Should Contain Word  ${Paragraph_VillageDevelopmentPage_GrantPrograms_P2_XPath}  Profil
    Paragraph Should Contain Word  ${Paragraph_VillageDevelopmentPage_GrantPrograms_P3_XPath}  Archiv

TS_05_06-VillageDevelopmentPage_Subsidy_Topics
    Navigate To Topic In DropDown Menu  Dotace  ${Button_MainPage_Header_Menu_Option4_DropItem_Last_XPath}  ${Button_MainPage_Header_Menu_Option4_XPath}  ${H1_Name_Of_Topic_XPath}
    Check Topic  ${Button_VillageDevelopmentPage_Subsidy_Topic1_XPath}
    Check Topic  ${Button_VillageDevelopmentPage_Subsidy_Topic2_XPath}
    Check Topic  ${Button_VillageDevelopmentPage_Subsidy_Topic3_XPath}

Post-conditions
    Post Condition Close Browser  Screenshot_VillageDevelopment.png  2