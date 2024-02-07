*** Variables ***

#Main page cookie
${Button_MainPage_Accept_Cookie_XPath}  //a[@id="cookieChoiceButton"]

#Main page header container for big display and menu toggler for small display
${Button_MainPage_Menu_XPath}  //ul[@class="topmenulevel1"]
${Button_MainPage_Menu_Toggler_XPath}  //div[@class="menu-toggler"]

#Main page header menu with dropdowns
${Button_MainPage_Header_Menu_Option1_XPath}  //ul[@class="topmenulevel1"]/li[1]/a[1]

${Button_MainPage_Header_Menu_Option2_XPath}  //ul[@class="topmenulevel1"]/li[2]/a[1]
${Button_MainPage_Header_Menu_Option2_DropItem_First_XPath}  //ul[@class="topmenulevel1"]/li[2]/ul[1]/li[1]/a[1]
${Button_MainPage_Header_Menu_Option2_Sixth_XPath}  //ul[@class="topmenulevel1"]/li[2]/ul[1]/li[6]/a[1]
${Button_MainPage_Header_Menu_Option2_Seventh_XPath}  //ul[@class="topmenulevel1"]/li[2]/ul[1]/li[7]/a[1]
${Button_MainPage_Header_Menu_Option2_DropItem_Last_XPath}  //ul[@class="topmenulevel1"]/li[2]/ul[1]/li[12]/a[1]

${Button_MainPage_Header_Menu_Option3_XPath}  //ul[@class="topmenulevel1"]/li[3]/a[1]
${Button_MainPage_Header_Menu_Option3_DropItem_First_XPath}  //ul[@class="topmenulevel1"]/li[3]/ul[1]/li[1]/a[1]
${Button_MainPage_Header_Menu_Option3_DropItem_Last_XPath}  //ul[@class="topmenulevel1"]/li[3]/ul[1]/li[10]/a[1]

${Button_MainPage_Header_Menu_Option4_XPath}  //ul[@class="topmenulevel1"]/li[4]/a[1]
${Button_MainPage_Header_Menu_Option4_DropItem_First_XPath}  //ul[@class="topmenulevel1"]/li[4]/ul[1]/li[1]/a[1]
${Button_MainPage_Header_Menu_Option4_GrantPrograms_XPath}  //ul[@class="topmenulevel1"]/li[4]/ul[1]/li[2]/a[1]
${Button_MainPage_Header_Menu_Option4_DropItem_Last_XPath}  //ul[@class="topmenulevel1"]/li[4]/ul[1]/li[4]/a[1]

${Button_MainPage_Header_Menu_Option5_XPath}  //ul[@class="topmenulevel1"]/li[5]/a[1]

${Button_MainPage_Header_Menu_Option6_XPath}  //ul[@class="topmenulevel1"]/li[6]/a[1]
${Button_MainPage_Header_Menu_Option6_DropItem_First_XPath}  //ul[@class="topmenulevel1"]/li[6]/ul[1]/li[1]/a[1]
${Button_MainPage_Header_Menu_Option6_DropItem_Church_XPath}  //ul[@class="topmenulevel1"]/li[6]/ul[1]/li[9]/a[1]
${Button_MainPage_Header_Menu_Option6_DropItem_FireFighters_XPath}  //ul[@class="topmenulevel1"]/li[6]/ul[1]/li[2]/a[1]
${Button_MainPage_Header_Menu_Option6_DropItem_KungFu_XPath}  //ul[@class="topmenulevel1"]/li[6]/ul[1]/li[8]/a[1]
${Button_MainPage_Header_Menu_Option6_DropItem_Last_XPath}  //ul[@class="topmenulevel1"]/li[6]/ul[1]/li[12]/a[1]

${Button_MainPage_Header_Menu_Option7_XPath}  //ul[@class="topmenulevel1"]/li[7]/a[1]

#Main page main content menu options
${Button_MainPage_MainContent_Menu_Option1_XPath}  //li[@class="tab-rohlas"]
${Button_MainPage_MainContent_Menu_Option2_XPath}  //li[@class="tab-kultura"]
${Button_MainPage_MainContent_Menu_Option3_XPath}  //li[@class="tab-zpravodaj"]

#Some of the main page basic components
${Button_MainPage_Emblem_XPath}  //span[@class="znak"]
${Button_MainPage_SearchIcon_XPath}  //span[@class="ikona-lupa"]

#Main page buttons for swaping images in header
${Button_MainPage_Header_First_Dot_XPath}  //div[@class="owl-dots"]/div[1]
${Button_MainPage_Header_Second_Dot_XPath}  //div[@class="owl-dots"]/div[2]
${Button_MainPage_Header_Third_Dot_XPath}  //div[@class="owl-dots"]/div[3]

#Main page partners links and cookie for them if needed
${Button_MainPage_Partners_XPath}  //div[contains(@class, "loga") and contains(@class, "flex-container")]
${Button_MainPage_Partner_Geosense_XPath}  //div[contains(@class, "loga") and contains(@class, "flex-container")]/a[1]
${Button_MainPage_Partner_CzechPoint_XPath}  //div[contains(@class, "loga") and contains(@class, "flex-container")]/a[2]
${Button_MainPage_Partner_OlomouckyKraj_XPath}  //div[contains(@class, "loga") and contains(@class, "flex-container")]/a[3]
${Button_MainPage_Partner_MoravskaCesta_XPath}  //div[contains(@class, "loga") and contains(@class, "flex-container")]/a[4]

${Button_Geosense_Accept_XPath}  //button[contains(@class, "disclaimer-agree")]

#Search panel
${Button_SearchPanel_Inner_Icon_XPath}  //form[contains(@id, "frm-mainSection-fulltextSearchForm")]/input[2]

#Register for news in village link
${Button_VillageLife_News_Register_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/a[1]
${Button_VillageLife_News_SendEmail_XPath}  //input[@id="frmform-send"]

#Contact page form for sending question
${Button_Contact_Form_Send_XPath}  //input[@id="frmform-send"]

#Main page recent events links
${Button_MainPage_Recent_Events_XPath}  //li[@class="tab-kultura"]/a
${Button_MainPage_Event1_XPath}  //div[@id="tab-kultura"]/div/div[1]/span[2]/a
${Button_MainPage_Event2_XPath}  //div[@id="tab-kultura"]/div/div[2]/span[2]/a
${Button_MainPage_Event3_XPath}  //div[@id="tab-kultura"]/div/div[3]/span[2]/a

#Main page official desk links
${Button_MainPage_OfficialDesk_Info1_XPath}  //div[@id="ipopage"]/div/div/div[2]/div[1]/div[2]/div[1]/div/div[1]/span[2]/a
${Button_MainPage_OfficialDesk_Info2_XPath}  //div[@id="ipopage"]/div/div/div[2]/div[1]/div[2]/div[1]/div/div[2]/span[2]/a
${Button_MainPage_OfficialDesk_Info3_XPath}  //div[@id="ipopage"]/div/div/div[2]/div[1]/div[2]/div[1]/div/div[3]/span[2]/a

#Organization page links in text
${Button_OrganizationsPage_Sokol_Link_In_Text_1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]/a[1]
${Button_OrganizationsPage_Sokol_Link_In_Text_2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]/a[3]
${Button_OrganizationsPage_Sokol_Link_In_Text_3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]/a[4]

#Organization page links in footer
${Button_OrganizationsPage_Sokol_Footer_Link1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[7]/a[1]
${Button_OrganizationsPage_Sokol_Footer_Link2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[7]/a[2]
${Button_OrganizationsPage_Sokol_Footer_Link3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[7]/a[3]

#Organizations page Facebook cookie
${Button_OrganizationsPage_Sokol_FB_Cookie_XPath}  //button[@data-cookiebanner="accept_button"]

#Organizations page farnost links
${Button_OrganizationsPage_Church_Link1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul/li[1]/a
${Button_OrganizationsPage_Church_Link2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul/li[2]/a
${Button_OrganizationsPage_Church_Link3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul/li[3]/a
${Button_OrganizationsPage_Church_Link4_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul/li[4]/a

#Organizations page farnost close button for images
${Button_OrganizationsPage_Church_CloseImage_XPath}  //div[@id="fancybox-container-3"]/div[2]/div[2]/button[4]/svg

#Organizations page kung fu links
${Button_OrganizationsPage_KungFu_Link1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[4]/a[3]
${Button_OrganizationsPage_KungFu_Link2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[6]/a[1]
${Button_OrganizationsPage_KungFu_Link3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[6]/a[2]

#Village development page sewerage form
${Button_VillageDevelopmentPage_Sewerage_Length_Changer_XPath}  //select[@id="frm-datagrid-noticesGrid-form-items"]

${Button_VillageDevelopmentPage_Sewerage_Length1_XPath}  //select[@id="frm-datagrid-noticesGrid-form-items"]/option
${Button_VillageDevelopmentPage_Sewerage_Length2_XPath}  //select[@id="frm-datagrid-noticesGrid-form-items"]/option[2]
${Button_VillageDevelopmentPage_Sewerage_Length3_XPath}  //select[@id="frm-datagrid-noticesGrid-form-items"]/option[3]

${Button_VillageDevelopmentPage_Sewerage_Type_Changer_XPath}  //select[@id="frm-datagrid-noticesGrid-form-filters-isArchived"]
${Button_VillageDevelopmentPage_Sewerage_Type_Archiv_XPath}  //select[@id="frm-datagrid-noticesGrid-form-filters-isArchived"]/option[2]

#Village development page subsidy topics
${Button_VillageDevelopmentPage_Subsidy_Topic1_XPath}  //div[@id="ipopage"]/div[2]/div/div[4]/div[1]/h2/a
${Button_VillageDevelopmentPage_Subsidy_Topic2_XPath}  //div[@id="ipopage"]/div[2]/div/div[4]/div[2]/h2/a
${Button_VillageDevelopmentPage_Subsidy_Topic3_XPath}  //div[@id="ipopage"]/div[2]/div/div[4]/div[3]/h2/a

#Municipal office page providing informations submenu
${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[1]/a
${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[2]/a
${Button_MunicipalOfficePage_ProvidingInformations_Menu_Option3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/p[3]/a

#Municipal office page mandatory informations links
${Button_MunicipalOfficePage_MandatoryInfo_Link1_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul[7]/li[1]/a
${Button_MunicipalOfficePage_MandatoryInfo_Link2_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul[7]/li[2]/a
${Button_MunicipalOfficePage_MandatoryInfo_Link3_XPath}  //div[@id="ipopage"]/div[2]/div/div[2]/ul[7]/li[3]/a