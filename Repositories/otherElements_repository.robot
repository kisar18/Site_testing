*** Variables ***

${Paragraph_MainPage_SearchPanel_ExpectedResult_XPath}  //div[@id="ipopage"]/div[2]/div/p

${H1_Name_Of_Topic_XPath}  //div[@id="ipopage"]/div[2]/div/h1
${H1_Alternative_Name_Of_Topic_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h1

${Input_SearchPanel_XPath}  //input[@id="frmfulltextForm-q"]

${Input_VillageLife_News_XPath}  //input[@id="frmform-email"]

#VillageLife page messages about result of registering for news
${Div_VillageLife_News_Warning_XPath}  //form[@id="frm-subscriptionForm-form"]/div[1]/div/div/div
${Div_VillageLife_News_Accepted_XPath}  //div[@id="snippet--flash"]/div/div/div

#Contact page form for sending question
${Input_Contact_Form_Name_XPath}  //input[@id="frmform-input0"]
${Input_Contact_Form_Email_XPath}  //input[@id="frmform-email"]
${Input_Contact_Form_PhoneNumber_XPath}  //input[@id="frmform-input2"]
${TextArea_Contact_Form_Message_XPath}  //textarea[@id="frmform-input3"]
${Span_Contact_Form_ReCaptcha_XPath}  //span[@id="recaptcha-anchor"]

#Main page recent events result
${Span_Recent_Events_Result_XPath}  //div[@id="ipopage"]/div[2]/div/div[3]/span[2]/a/span[2]/span

${Span_Recent_OfficialDesk_Info_Result_XPath}  //div[@id="ipopage"]/div[2]/div/div[3]/div[1]/span

#Organizations page sokol text in paragraphs
${Paragraph_OrganizationsPage_Sokol_Body1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[1]
${Paragraph_OrganizationsPage_Sokol_Body3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[3]
${Paragraph_OrganizationsPage_Sokol_Body5_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[5]

#Organizations page farnost text in paragraphs
${Paragraph_OrganizationsPage_Church_Body1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[4]
${Paragraph_OrganizationsPage_Church_Body2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[10]
${Paragraph_OrganizationsPage_Church_Body3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[15]

#Organizations page fire fighters text in paragraphs
${Paragraph_OrganizationsPage_FireFighters_Body1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[1]
${Paragraph_OrganizationsPage_FireFighters_Body2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[3]
${Paragraph_OrganizationsPage_FireFighters_Body3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[7]

#Organizations page kung fu text in paragraphs
${Paragraph_OrganizationsPage_KungFu_Body1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[1]
${Paragraph_OrganizationsPage_KungFu_Body2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]
${Paragraph_OrganizationsPage_KungFu_Body3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[6]

#Organizations page h2 of expected result after button is clicked
${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[1]
${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[2]
${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[3]
${H2_OrganizationsPage_Church_Name_Of_Paragraph_For_Button4_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[4]

#Village development page sewerage form
${Form_VillageDevelopmentPage_Sewerage_XPath}  //form[@id="frm-noticesGrid-form"]

${Input_VillageDevelopmentPage_Sewerage_Search_XPath}  //input[@id="frm-datagrid-noticesGrid-form-filters-name"]

${Span_VillageDevelopmentPage_Sewerage_String_ExpectedResult_XPath}  //form[@id="frm-noticesGrid-form"]/table/tfoot/tr/td/span
${Span_VillageDevelopmentPage_Sewerage_String_Alternative_ExpectedResult_XPath}  //form[@id="frm-noticesGrid-form"]/table/tfoot/tr/td/span[2]

#Village development page grant programs form
${Input_VillageDevelopmentPage_GrantPrograms_Search_XPath}  //input[@id="frm-datagrid-noticesGrid-form-filters-name"]

#Village development page grant programs paragraphs
${Paragraph_VillageDevelopmentPage_GrantPrograms_P1_XPath}  //div[@id="ipopage"]/div[2]/div/div[3]/p[1]
${Paragraph_VillageDevelopmentPage_GrantPrograms_P2_XPath}  //div[@id="ipopage"]/div[2]/div/div[3]/p[2]
${Paragraph_VillageDevelopmentPage_GrantPrograms_P3_XPath}  //div[@id="ipopage"]/div[2]/div/div[3]/p[3]

#Village development page subsidy
${Span_VillageDevelopmentPage_TopicResult_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/div[4]/div/span

#Municipal office page providing informations text
${Paragraph_MunicipalOfficePage_ProvidingInfo_P1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[7]
${Paragraph_MunicipalOfficePage_ProvidingInfo_P2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[9]
${Paragraph_MunicipalOfficePage_ProvidingInfo_P3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[13]

${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option1_ExpectedResult_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[2]
${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option2_ExpectedResult_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[3]
${Paragraph_MunicipalOfficePage_ProvidingInfo_Menu_Option3_ExpectedResult_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/h2[5]

#Municipal office page mandatory informations text
${Paragraph_MunicipalOfficePage_MandatoryInfo_P1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]
${Paragraph_MunicipalOfficePage_MandatoryInfo_P2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[3]
${Paragraph_MunicipalOfficePage_MandatoryInfo_P3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[9]