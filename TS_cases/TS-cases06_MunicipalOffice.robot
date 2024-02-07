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
    Navigate To Topic In DropDown Menu  Poskytování informací  ${Button_MainPage_Header_Menu_Option2_Seventh_XPath}  ${Button_MainPage_Header_Menu_Option2_XPath}  ${H1_Alternative_Name_Of_Topic_XPath}

TS_06_01-MunicipalOfficePage_Providing_Informations_Page_Navigation
    Check And Click Button  ${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option1_XPath}  ${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option1_ExpectedResult_XPath}  Žádosti
    Check And Click Button  ${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option2_XPath}  ${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option2_ExpectedResult_XPath}  Příjem
    Check And Click Button  ${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option3_XPath}  ${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option3_ExpectedResult_XPath}  odvolání

TS_06_02-MunicipalOfficePage_Providing_Informations_Text
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_ProvidingInfo_P1_XPath}  žádosti
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_ProvidingInfo_P2_XPath}  Neobsahuje-li
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_ProvidingInfo_P3_XPath}  Ostatní

TS_06_03-MunicipalOfficePage_Mandatory_Informations_Links
    Navigate To Topic In DropDown Menu  Povinně zveřejňované  ${Button_MainPage_Header_Menu_Option2_Sixth_XPath}  ${Button_MainPage_Header_Menu_Option2_XPath}  ${H1_Alternative_Name_Of_Topic_XPath}
    Check And Click Link And Open In New Tab  ${Button_MunicipalOfficePage_MandatoryInfo_Link1_XPath}  MunicipalOffice_MandatoryInformations_Link1.png  ${NewURL}
    Check And Click Link And Open In New Tab  ${Button_MunicipalOfficePage_MandatoryInfo_Link2_XPath}  MunicipalOffice_MandatoryInformations_Link2.png  ${NewURL}
    Check And Click Link And Open In New Tab  ${Button_MunicipalOfficePage_MandatoryInfo_Link3_XPath}  MunicipalOffice_MandatoryInformations_Link3.png  ${NewURL}

TS_06_04-MunicipalOfficePage_Mandatory_Informations_Text
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_MandatoryInfo_P1_XPath}  Obec
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_MandatoryInfo_P2_XPath}  zákonem
    Paragraph Should Contain Word  ${Paragraph_MunicipalOfficePage_MandatoryInfo_P3_XPath}  záležitosti

Post-conditions
    Post Condition Close Browser  Screenshot_MunicipalOffice.png  2