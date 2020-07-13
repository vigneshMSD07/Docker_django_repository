from selenium import webdriver as wd
from selenium.webdriver import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time

driver =wd.Chrome(r"C:\Users\vikky\OneDrive\Desktop\chromedriver.exe")
driver.get('https://www.globalsqa.com/demo-site/draganddrop/')
driver.maximize_window()
driver.implicitly_wait(10)
ac = ActionChains(driver)
ele10 = driver.find_element_by_xpath("//iframe[@class='demo-frame lazyloaded']")
driver.switch_to.frame(ele10)
ele1 = driver.find_element_by_xpath('//li[contains(@class, "ui-widget-content ui-corner-tr ui-draggable ui-draggable-handle")]//img[@src="images/high_tatras_min.jpg"]')
ele2 = driver.find_element_by_xpath('//div[@id="trash"]')
ac.drag_and_drop(ele1,ele2).perform()
