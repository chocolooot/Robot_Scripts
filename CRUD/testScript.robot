*** Settings ***
Documentation     My First Try with RobotFramework.
Library           SeleniumLibrary

*** Variables ***
${URL}            http://127.0.0.1:8000/products
${BROWSER}        Chrome
${DELAY}		  1
${CREATE_URL}	  http://127.0.0.1:8000/products/create
${SHOW_URL}		  http://127.0.0.1:8000/products/1
${EDIT_URL}		  http://127.0.0.1:8000/products/1/edit
${BLANK_TEST}	    
${INPUT}		  This is the first Input
${NEW_INPUT}	  This is the Edited Text

*** Test Cases ***
Browsing The Laravel CRUD
    Open Browser To List Page
    Add A New Agent
    Show Details Of The Agent
    Edit Details Of The Agent
    Delete Details Of The Agent
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To List Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed			${DELAY}

Add A New Agent
	Go To 			${CREATE_URL}
	Input Text		name		${BLANK_TEST}
	Input Text		detail		${BLANK_TEST}
	Click Button  	Submit
	Input Text		name 		${BLANK_TEST}
	Input Text 		detail 		${INPUT}
	Click Button  	Submit
	Input Text 		name 		${INPUT}
	Input Text 		detail 		${BLANK_TEST}
	Click Button  	Submit
	Input Text 		name 		${INPUT}
	Input Text 		detail 		${INPUT}
	Click Button  	Submit

Show Details Of The Agent
	Go To			${SHOW_URL}
	Go To			${URL}	

Edit Details Of The Agent
	Go To			${EDIT_URL}
	Input Text		name  		${BLANK_TEST}
	Input Text		detail 		${BLANK_TEST}
	Click Button	Submit
	Input Text		name  		${BLANK_TEST}
	Input Text		detail 		${NEW_INPUT}
	Click Button	Submit
	Input Text		name  		${NEW_INPUT}
	Input Text		detail 		${BLANK_TEST}
	Click Button	Submit
	Input Text		name  		${NEW_INPUT}
	Input Text		detail 		${NEW_INPUT}
	Click Button	Submit

Delete Details Of The Agent
	Click Button	Delete
