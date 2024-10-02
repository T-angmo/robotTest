*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Test True when X is 1
    [Documentation]    ใส่เลข 1
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /mul5/1
    Should Be Equal As Strings    ${result.json()}    5.0
    
Test False when X is neg10
    [Documentation]    ใส่เลข -10
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /mul5/-10
    Should Be Equal As Strings    ${result.json()}    -50.0
    
Test True when X is 1dot5
    [Documentation]    ใส่เลข 1.5
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /mul5/1.5
    Should Be Equal As Strings    ${result.json()}    7.5