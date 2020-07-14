from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.ui import WebDriverWait



driver = webdriver.Chrome(r"C<path>\chromedriver.exe")
driver.get("http://www.cricbuzz.com")
driver.maximize_window()
action = ActionChains(driver)
FE = driver.find_element_by_xpath("//a[text()='News']")
LN = driver.find_element_by_xpath("//a[text()='Latest News']")
action.move_to_element(FE).move_to_element(LN).click().perform()
wait = WebDriverWait(driver, 10)
wait.until(expected_conditions.visibility_of_element_located((By.XPATH, "//h1[contains(text(),'Latest')]")))
c = driver.find_elements_by_xpath("//div[@class='cb-col cb-col-67 cb-nws-lft-col']//h2//a")
for element in c:
    if 'Vihari' in element.text:
        print element.text
