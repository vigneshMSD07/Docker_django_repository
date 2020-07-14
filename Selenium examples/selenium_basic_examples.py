from selenium import webdriver

driver = webdriver.Chrome(r"<path>\chromedriver.exe")
driver.get("https://www.cricbuzz.com/")
driver.maximize_window()
driver.implicitly_wait(15)
driver.find_element_by_xpath('//input[@id="search_bar"]').click()
driver.find_element_by_xpath('//input[@id="search_bar"]').send_keys("vikky")
driver.find_element_by_xpath('//a[text()="SEARCH"]').click()
driver.close()
