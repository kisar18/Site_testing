*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  Dialogs
Resource  ../keywords.robot
Resource  ../Repositories/buttons_repository.robot
Resource  ../Repositories/images_repository.robot

*** Variables ***
${ChromeBrowser}  Chrome
${URL}  https://www.krelov.cz
${EMPTY}

*** Test Cases ***
Pre-conditions
    Pre Condition Open Browser  ${ChromeBrowser}  ${URL}  ${Button_MainPage_Menu_Toggler_XPath}  0.2  ${Button_MainPage_Accept_Cookie_XPath}
    Maximize Browser Window
    Navigate To Topic In DropDown Menu  Aktuality  ${Button_MainPage_Header_Menu_Option3_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option3_XPath}  ${H1_Name_Of_Topic_XPath}
    Check And Click Button  ${Button_VillageLife_News_Register_XPath}  ${H1_Name_Of_Topic_XPath}  Přihlášení k odběru

TC_02_01-VillageLifePage_Register_For_Getting_News_To_Email_With_No_Email
    Register For News  ${Button_VillageLife_News_SendEmail_XPath}  ${Div_VillageLife_News_Warning_XPath}  Zadejte e-mail  ${EMPTY}

TC_02_02-VillageLifePage_Register_For_Getting_News_To_Email_With_No_@_In_Email
    Register For News  ${Button_VillageLife_News_SendEmail_XPath}  ${Div_VillageLife_News_Warning_XPath}  Zadejte e-mail  testing.email

TC_02_03-VillageLifePage_Register_For_Getting_News_To_Email_With_No_Suffix_In_Email
    Register For News  ${Button_VillageLife_News_SendEmail_XPath}  ${Div_VillageLife_News_Warning_XPath}  Zadejte e-mail  testing@email

TC_02_04-VillageLifePage_Register_For_Getting_News_To_Email_Correctly
    Register For News  ${Button_VillageLife_News_SendEmail_XPath}  ${Div_VillageLife_News_Accepted_XPath}  byl odeslán  testing@email.com

Post-conditions
    Post Condition Close Browser  Screenshot_RegisterForNews.png  2