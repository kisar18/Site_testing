*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
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

TC_01_01-MainPage_Basic_Components_Small_Window
    Check Components In Small Window  ${Image_MainPage_Header_XPath}  ${Button_MainPage_Emblem_XPath}  ${Button_MainPage_Menu_Toggler_XPath}  ${Button_MainPage_SearchIcon_XPath}

TC_01_02-MainPage_Basic_Components_Big_Window
    Check Components In Big Window  ${Image_MainPage_Header_XPath}  ${Button_MainPage_Emblem_XPath}  ${Button_MainPage_Menu_XPath}  ${Button_MainPage_SearchIcon_XPath}

TC_01_03-MainPage_Header_TopMenu
    Check If Element Is Visible  ${Button_MainPage_Header_Menu_Option1_XPath}

    Check DropDown Item In Menu  ${Button_MainPage_Header_Menu_Option2_XPath}  ${Button_MainPage_Header_Menu_Option2_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option2_DropItem_Last_XPath}

    Check DropDown Item In Menu  ${Button_MainPage_Header_Menu_Option3_XPath}  ${Button_MainPage_Header_Menu_Option3_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option3_DropItem_Last_XPath}

    Check DropDown Item In Menu  ${Button_MainPage_Header_Menu_Option4_XPath}  ${Button_MainPage_Header_Menu_Option4_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option4_DropItem_Last_XPath}

    Check If Element Is Visible  ${Button_MainPage_Header_Menu_Option5_XPath}

    Check DropDown Item In Menu  ${Button_MainPage_Header_Menu_Option6_XPath}  ${Button_MainPage_Header_Menu_Option6_DropItem_First_XPath}  ${Button_MainPage_Header_Menu_Option6_DropItem_Last_XPath}

    Check If Element Is Visible  ${Button_MainPage_Header_Menu_Option7_XPath}

TC_01_04-MainPage_MainContent_Menu
    Check If Element Is Visible  ${Button_MainPage_MainContent_Menu_Option1_XPath}

    Check If Element Is Visible  ${Button_MainPage_MainContent_Menu_Option2_XPath}

    Check If Element Is Visible  ${Button_MainPage_MainContent_Menu_Option3_XPath}

TC_01_05-MainPage_Header_Swaping_Images
    Swap Header Images

TC_01_06-MainPage_Partners_Links
    Check If Element Is Visible  ${Button_MainPage_Partners_XPath}

    Check And Click Link To New Page  ${Button_MainPage_Partner_Geosense_XPath}  partner1.png  ${NewURL}

    Check And Click Link To New Page  ${Button_MainPage_Partner_CzechPoint_XPath}  partner2.png  ${NewURL}

    Check And Click Link To New Page  ${Button_MainPage_Partner_OlomouckyKraj_XPath}  partner3.png  ${NewURL}

    Check And Click Link To New Page  ${Button_MainPage_Partner_MoravskaCesta_XPath}  partner4.png  ${NewURL}

TC_01_07-MainPage_Search_Informations
    Main Page Find Information  Sport
    Main Page Find Information  Zpravodaj
    Main Page Find Information  Kontakt
    Click Element  ${Button_MainPage_Emblem_XPath}
    Sleep  1

TC_01_08-MainPage_Recent_Events
    Check Recent Events

TC_01_09-MainPage_Official_Desk
    Check Official Desk

Post-conditions
    Post Condition Close Browser  Screenshot_MainPage.png  2