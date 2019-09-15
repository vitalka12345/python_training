*** Settings ***
Suite Setup    Open Browser    https://www.katalon.com/    firefox
Suite Teardown    Close Browser
Resource    seleniumLibrary.robot

*** Variables ***
${undefined}    https://www.katalon.com/

*** Test Cases ***
Test Case
    open    http://localhost/addressbook/
    click    name=user
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Пароль:'])[1]/following::input[2]
    click    link=Группы
    click    name=new
    click    name=group_name
    type    name=group_name    группа1
    type    name=group_header    футер1
    type    name=group_footer    коммент1
    click    name=submit
    click    link=group page
    click    link=Выйти
    type    name=user    admin
    