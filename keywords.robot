*** Settings ***
Resource  ./Repositories/buttons_repository.robot
Resource  ./Repositories/images_repository.robot
Resource  ./Repositories/otherElements_repository.robot

*** Keywords ***

# Main page keywords
Pre Condition Open Browser
    [Arguments]  ${Browser}  ${URL}  ${Element}  ${Speed}  ${Accept_Cookie}
    Set Selenium Speed  ${Speed}
    Open Browser  ${URL}  ${Browser}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Accept_Cookie}

Check If Element Is Visible
    [Arguments]  ${Element}
    Wait Until Element Is Visible   ${Element}
    Element Should Be Visible   ${Element}

Check Components In Small Window
    [Arguments]  ${Component1}  ${Component2}  ${Component3}  ${Component4}
    Check If Element Is Visible  ${Component1}
    Check If Element Is Visible  ${Component2}
    Check If Element Is Visible  ${Component3}
    Check If Element Is Visible  ${Component4}

Check Components In Big Window
    [Arguments]  ${Component1}  ${Component2}  ${Component3}  ${Component4}
    Maximize Browser Window
    Check If Element Is Visible  ${Component1}
    Check If Element Is Visible  ${Component2}
    Check If Element Is Visible  ${Component3}
    Check If Element Is Visible  ${Component4}

Check DropDown Item In Menu
    [Arguments]  ${Item_With_DropDown}  ${DropDown_Item_First}  ${DropDown_Item_Last}
    Mouse Over  ${Item_With_DropDown}
    Element Should Be Visible  ${DropDown_Item_First}
    Element Should Be Visible  ${DropDown_Item_Last}

Check And Click Link To New Page
    [Arguments]  ${Button}  ${Filename}  ${NewURL}
    Wait Until Element Is Visible  ${Button}
    Set Focus To Element  ${Button}
    Click Element  ${Button}
    Switch Window  new
    Sleep  2
    Run Keyword If  '${Button}'== '${Button_MainPage_Partner_Geosense_XPath}'  Click Button  ${Button_Geosense_Accept_XPath}
    Run Keyword If  '${Button}'== '${Button_OrganizationsPage_Sokol_Footer_Link2_XPath}'  Click Button  ${Button_OrganizationsPage_Sokol_FB_Cookie_XPath}
    Capture Page Screenshot  ${Filename}
    ${NewURL}=  Get Location
    Log  ${NewURL}
    Sleep  1
    Switch Window  main

Mouse Over Link
    [Arguments]  ${Button}
    Wait Until Element Is Visible  ${Button}
    Set Focus To Element  ${Button}
    Mouse Over  ${Button}
    Element Should Be Focused  ${Button}

Swap Header Images
    [Arguments]
    Click Element  ${Button_MainPage_Header_First_Dot_XPath}
    Sleep  1
    Element Should Be Visible  ${Image_MainPage_Header_Image1_XPath}
    Click Element  ${Button_MainPage_Header_Second_Dot_XPath}
    Sleep  1
    Element Should Be Visible  ${Image_MainPage_Header_Image2_XPath}
    Click Element  ${Button_MainPage_Header_Third_Dot_XPath}
    Sleep  1
    Element Should Be Visible  ${Image_MainPage_Header_Image3_XPath}

Main Page Find Information
    [Arguments]  ${Text_To_Find}
    Set Focus To Element  ${Button_MainPage_SearchIcon_XPath}
    Element Should Be Visible  ${Button_MainPage_SearchIcon_XPath}
    Click Element  ${Button_MainPage_SearchIcon_XPath}
    Element Should Be Visible  ${Input_SearchPanel_XPath}
    Click Element  ${Input_SearchPanel_XPath}
    Input Text  ${Input_SearchPanel_XPath}  ${Text_To_Find}
    Element Should Be Visible  ${Button_SearchPanel_Inner_Icon_XPath}
    Click Element  ${Button_SearchPanel_Inner_Icon_XPath}
    sleep  1
    Element Should Contain  ${Paragraph_MainPage_SearchPanel_ExpectedResult_XPath}  byl nalezen

Check Recent Events
    Element Should Be Visible  ${Button_MainPage_Recent_Events_XPath}
    Set Focus To Element  ${Button_MainPage_Recent_Events_XPath}
    Click Element  ${Button_MainPage_Recent_Events_XPath}
    Check If Element Is Visible  ${Button_MainPage_Event1_XPath}
    Check And Click Button  ${Button_MainPage_Event1_XPath}  ${Span_Recent_Events_Result_XPath}  Zpět
    Go Back
    Element Should Be Visible  ${Button_MainPage_Recent_Events_XPath}
    Set Focus To Element  ${Button_MainPage_Recent_Events_XPath}
    Click Element  ${Button_MainPage_Recent_Events_XPath}
    Check If Element Is Visible  ${Button_MainPage_Event2_XPath}
    Check And Click Button  ${Button_MainPage_Event2_XPath}  ${Span_Recent_Events_Result_XPath}  Zpět
    Go Back
    Element Should Be Visible  ${Button_MainPage_Recent_Events_XPath}
    Set Focus To Element  ${Button_MainPage_Recent_Events_XPath}
    Click Element  ${Button_MainPage_Recent_Events_XPath}
    Check If Element Is Visible  ${Button_MainPage_Event3_XPath}
    Check And Click Button  ${Button_MainPage_Event3_XPath}  ${Span_Recent_Events_Result_XPath}  Zpět
    Go Back

Check Official Desk
    Element Should Be Visible  ${Button_MainPage_OfficialDesk_Info1_XPath}
    Set Focus To Element  ${Button_MainPage_OfficialDesk_Info1_XPath}
    Check And Click Button  ${Button_MainPage_OfficialDesk_Info1_XPath}  ${Span_Recent_OfficialDesk_Info_Result_XPath}  Vyvěšeno
    Go Back
    Element Should Be Visible  ${Button_MainPage_OfficialDesk_Info2_XPath}
    Set Focus To Element  ${Button_MainPage_OfficialDesk_Info2_XPath}
    Check And Click Button  ${Button_MainPage_OfficialDesk_Info2_XPath}  ${Span_Recent_OfficialDesk_Info_Result_XPath}  Vyvěšeno
    Go Back
    Element Should Be Visible  ${Button_MainPage_OfficialDesk_Info3_XPath}
    Set Focus To Element  ${Button_MainPage_OfficialDesk_Info3_XPath}
    Check And Click Button  ${Button_MainPage_OfficialDesk_Info3_XPath}  ${Span_Recent_OfficialDesk_Info_Result_XPath}  Vyvěšeno
    Go Back

Post Condition Close Browser
    [Arguments]  ${Filename}  ${TimeToSleep}
    Capture Page Screenshot  ${Filename}
    Sleep  ${TimeToSleep}
    Close Browser

# VillageLife page keywords
Check And Click Button
    [Arguments]  ${Button}  ${Element_With_Result}  ${Expected_Result}
    Wait Until Element Is Visible  ${Button}
    Set Focus To Element  ${Button}
    Click Element  ${Button}
    Sleep  1
    Run Keyword If  '${Expected_Result}'== 'alert'  Alert Should Be Present
    Run Keyword If  '${Expected_Result}'!= 'alert'  Element Should Contain  ${Element_With_Result}  ${Expected_Result}

Register For News
    [Arguments]  ${Button}  ${Element_With_Result}  ${Expected_Result}  ${Email}
    Wait Until Element Is Visible  ${Input_VillageLife_News_XPath}
    Click Element  ${Input_VillageLife_News_XPath}
    Input Text  ${Input_VillageLife_News_XPath}  ${Email}
    Set Focus To Element  ${Button}
    Click Element  ${Button}
    Run Keyword If  '${Email}'== '${EMPTY}'  Alert Should Be Present
    Run Keyword If  '${Email}'== 'testing.email'  Alert Should Be Present
    Run Keyword If  '${Email}'== 'testing@email'  Alert Should Be Present
    Execute Manual Step  Please complete reCaptcha and then press the PASS button to let robot framework continue his work.
    Run Keyword If  '${Email}'!= 'testing@email.com'  Alert Should Be Present
    Run Keyword If  '${Email}'== 'testing@email.com'  Alert Should Not Be Present
    Element Should Contain  ${Element_With_Result}  ${Expected_Result}

Navigate To Topic In DropDown Menu
    [Arguments]  ${TopicName}  ${Topic}  ${Parent}  ${ResultElement}
    Set Focus To Element  ${Button_MainPage_Menu_XPath}
    Element Should Be Visible  ${Button_MainPage_Menu_XPath}
    Mouse Over  ${Parent}
    Mouse Over  ${Topic}
    Click Element  ${Topic}
    Sleep  1
    Element Should Contain  ${ResultElement}  ${TopicName}

# Contact page keywords
Check Question Sender Attribute With Value
    [Arguments]  ${Button}  ${Input_Field}  ${Value}  ${Expected_Result}
    Wait Until Element Is Visible  ${Input_Field}
    Click Element  ${Input_Field}
    Input Text  ${Input_Field}  ${Value}
    Set Focus To Element  ${Button}
    Click Element  ${Button}
    Run Keyword If  '${Expected_Result}'== 'alert'  Alert Should Be Present
    Run Keyword If  '${Expected_Result}'== '${EMPTY}'  Alert Should Not Be Present

# Organizations page keywords
Paragraph Should Contain Word
    [Arguments]  ${Paragraph}  ${Word}
    Page Should Contain Element  ${Paragraph}
    Set Focus To Element  ${Paragraph}
    Element Should Contain  ${Paragraph}  ${Word}

Check Image
    [Arguments]  ${Image}
    Page Should Contain Image  ${Image}
    Set Focus To Element  ${Image}
    Element Should Be Visible  ${Image}

# Village development page keywords
Find Record In Form
    [Arguments]  ${Text_To_Find}  ${Input}  ${StringResult}
    Set Focus To Element  ${Input}
    Element Should Be Visible  ${Input}
    Click Element  ${Input}
    Input Text  ${Input}  ${Text_To_Find}
    Press Keys  ${Input}  ENTER
    Sleep  1
    Element Should Contain  ${Span_VillageDevelopmentPage_Sewerage_String_ExpectedResult_XPath}  ${StringResult}
    Clear Element Text  ${Input}
    Sleep  1

Try Form Lengths
    Wait Until Element Is Visible  ${Form_VillageDevelopmentPage_Sewerage_XPath}
    Set Focus To Element  ${Span_VillageDevelopmentPage_Sewerage_String_ExpectedResult_XPath}
    Sleep  1
    Element Should Contain  ${Span_VillageDevelopmentPage_Sewerage_String_ExpectedResult_XPath}  Záznamy 1 - 23
    Click Element  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}  UP
    Sleep  1
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}  ENTER
    Sleep  1
    Element Should Contain  ${Span_VillageDevelopmentPage_Sewerage_String_Alternative_ExpectedResult_XPath}  Záznamy 1 - 20
    Click Element  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}  UP
    Sleep  1
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}  ENTER
    Sleep  1
    Element Should Contain  ${Span_VillageDevelopmentPage_Sewerage_String_Alternative_ExpectedResult_XPath}  Záznamy 1 - 10

Look To Archiv
    Wait Until Element Is Visible  ${Form_VillageDevelopmentPage_Sewerage_XPath}
    Set Focus To Element  ${Button_VillageDevelopmentPage_Sewerage_Type_Changer_XPath}
    Click Element  ${Button_VillageDevelopmentPage_Sewerage_Type_Changer_XPath}
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Type_Changer_XPath}  DOWN
    Sleep  1
    Press Keys  ${Button_VillageDevelopmentPage_Sewerage_Type_Changer_XPath}  ENTER
    Sleep  2
    Element Should Contain  ${Span_VillageDevelopmentPage_Sewerage_String_ExpectedResult_XPath}  Záznamy 1 - 1

Check Topic
    [Arguments]  ${Topic}
    Wait Until Element Is Visible  ${Topic}
    Set Focus To Element  ${Topic}
    Click Element  ${Topic}
    Element Should Contain  ${Span_VillageDevelopmentPage_TopicResult_XPath}  Publikováno
    Sleep  1
    Go Back

# Municipal office page keywords
Check And Click Link And Open In New Tab
    [Arguments]  ${Button}  ${Filename}  ${NewURL}
    Wait Until Element Is Visible  ${Button}
    Set Focus To Element  ${Button}
    Click Element  ${Button}  CTRL
    Switch Window  new
    Sleep  2
    Capture Page Screenshot  ${Filename}
    ${NewURL}=  Get Location
    Log  ${NewURL}
    Sleep  1
    Switch Window  main