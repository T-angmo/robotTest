*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Test True when X is 17
    [Documentation]    ใส่เลข 17
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /is_prime/17
    Should Be Equal As Strings    ${result.json()}    True
    
Test False when X is 36
    [Documentation]    ใส่เลข 36
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /is_prime/36
    Should Be Equal As Strings    ${result.json()}    False
    
Test True when X is 13219
    [Documentation]    ใส่เลข 13219
    Create Session     myapi    http://127.0.0.1:5000
    ${result}=         GET On Session    myapi    /is_prime/13219
    Should Be Equal As Strings    ${result.json()}    True