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
    Check And Click Button  ${Button_MainPage_Header_Menu_Option7_XPath}  ${H1_Name_Of_Topic_XPath}  Kontakt

TC_03-01-ContactPage_QuestionForm_Blank_Inputs
    Check And Click Button  ${Button_Contact_Form_Send_XPath}  ${EMPTY}  alert

TC_03_02-ContactPage_QuestionForm_With_Only_Name
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${Input_Contact_Form_Name_XPath}  Tester  alert

TC_03_03-ContactPage_QuestionForm_With_Email_Without_@
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${Input_Contact_Form_Email_XPath}  testing.email  alert

TC_03_04-ContactPage_QuestionForm_With_Email_Without_Suffix
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${Input_Contact_Form_Email_XPath}  testing@email  alert

TC_03_05-ContactPage_QuestionForm_With_Name_And_Email
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${Input_Contact_Form_Email_XPath}  testing@email.com  alert

TC_03_06-ContactPage_QuestionForm_With_Name_And_Email_Without_Message
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${TextArea_Contact_Form_Message_XPath}  ${EMPTY}  alert

TC_03_07-ContactPage_QuestionForm_With_All_Needed_Text_Attributes
    Check Question Sender Attribute With Value  ${Button_Contact_Form_Send_XPath}  ${TextArea_Contact_Form_Message_XPath}  Test, tento email neberte vážně  ${EMPTY}

Post-conditions
    Post Condition Close Browser  Screenshot_ContactPage.png  2