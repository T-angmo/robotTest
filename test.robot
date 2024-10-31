*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Test True when X is 5_3
    [Documentation]    ใส่เลข 5, 3
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /power/5/3
    Should Be Equal As Strings    ${result.json()}    125.0
    
Test False when X is 4_0
    [Documentation]    ใส่เลข 4, 0
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /power/4/0
    Should Be Equal As Strings    ${result.json()}    1.0
    
Test True when X is 9_half
    [Documentation]    ใส่เลข 9, 0.5
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /power/9/0.5
    Should Be Equal As Strings    ${result.json()}    3.0