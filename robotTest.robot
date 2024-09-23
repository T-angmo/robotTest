*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Test Plus API
    [Documentation]    ทดสอบ API บวกเลข
    Create Session     myapi    http://api-container:5000
    ${result}=         Get Request    myapi    /plus/5/6
    Should Be Equal As Strings    ${result.json()}    11