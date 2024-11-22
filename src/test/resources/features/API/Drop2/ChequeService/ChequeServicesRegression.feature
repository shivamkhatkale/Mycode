# Feature: Cheque Services API
# Author: Sachin Ghorpade and Gauri Mate
# Description: Regression Testing : Cheque Services API
# Test Environment: SIT
# Preconditions: Cheque Services API should be up and running

########################################################################################################
Feature: Regression of Cheque Service API Test
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/ChequeService  
########################################################################################################

@TestCaseKey=UDB-T28623 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/account-info   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_accountinfo.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_accountinfo.json|
  
 
    @TestCaseKey=UDB-T28626 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/account-info |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_account-info_Response_Regression_Mandatory_Field_Invalid_400.json|
  
    @TestCaseKey=UDB-T28622 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/account-info |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28624 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/account-info   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28625 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/account-info |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Invalid_Json_400.json|
  
   @TestCaseKey=UDB-T28659 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/account-info   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33000 @Regression
  Scenario Outline: Verify "/account-info" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/account-info1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Invalid_Endpoint_404.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33006 @Regression
  Scenario Outline: Verify "/account-info" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/account-info | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Request_Method_Not_Supported_405.json|null|null|null    |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28627 @Regression 
  Scenario Outline: Verify "/account-info" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/account-info   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_account-info_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_account-info_Response_Regression_Internal_Server_Error_500.json|

 
@TestCaseKey=UDB-T28628 @Regression 
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | chequeservice |/book-request   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_bookrequest.json|accountNumber|accounts[0].acctNum|CS_accountinfo.json | \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_bookrequest.json|
     
 
   @TestCaseKey=UDB-T28658 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/book-request   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_bookrequest.json|accountNumber|accounts[0].acctNum|CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_bookrequest.json|
  
 
    @TestCaseKey=UDB-T28631 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/book-request |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_book-request_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T28661 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/book-request |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28629 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/book-request   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28630 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/book-request |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T28667 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/book-request   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33001 @Regression
  Scenario Outline: Verify "/book-request" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/book-request1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Invalid_Endpoint_404.json|accountNumber|accounts[12].acctNum|CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33007 @Regression
  Scenario Outline: Verify "/book-request" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/book-request | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Request_Method_Not_Supported_405.json|accountNumber|accounts[12].acctNum|CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28632 @Regression 
  Scenario Outline: Verify "/book-request" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/book-request   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_book-request_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_book-request_Response_Regression_Internal_Server_Error_500.json|

@TestCaseKey=UDB-T28645 @Regression 
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | chequeservice |/cheque-leafs   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_chequeleafs.json|
     
 
  @TestCaseKey=UDB-T28646 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/cheque-leafs   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json | \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_chequeleafs.json|
  

   @TestCaseKey=UDB-T28649 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/cheque-leafs |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_cheque-leafs_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T28657 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/cheque-leafs |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28647 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/cheque-leafs   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28648 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/cheque-leafs |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T28660 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/cheque-leafs   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33004 @Regression
  Scenario Outline: Verify "/cheque-leafs" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/cheque-leafs1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Invalid_Endpoint_404.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33010 @Regression
  Scenario Outline: Verify "/cheque-leafs" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/cheque-leafs | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Request_Method_Not_Supported_405.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json  |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28650 @Regression 
  Scenario Outline: Verify "/cheque-leafs" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/cheque-leafs   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_cheque-leafs_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_cheque-leafs_Response_Regression_Internal_Server_Error_500.json|

@TestCaseKey=UDB-T28639 @Regression 
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positivepaylimit.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positivepaylimit.json|
     
 
  @TestCaseKey=UDB-T28640 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positivepaylimit.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positivepaylimit.json|
  
 
    @TestCaseKey=UDB-T28643 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_positive-pay-limit_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T28662 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28641 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28642 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T28663 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33003 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Invalid_Endpoint_404.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33009 @Regression
  Scenario Outline: Verify "/positive-pay-limit" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/positive-pay-limit | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Request_Method_Not_Supported_405.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28644 @Regression 
  Scenario Outline: Verify "/positive-pay-limit" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/positive-pay-limit   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_positive-pay-limit_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_positive-pay-limit_Response_Regression_Internal_Server_Error_500.json|

@TestCaseKey=UDB-T28633 @Regression 
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | chequeservice |/status-inquiry   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_statusinquiry.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_statusinquiry.json|
     
 
  @TestCaseKey=UDB-T28634 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/status-inquiry   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_statusinquiry.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_statusinquiry.json|
  
  
    @TestCaseKey=UDB-T28637 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/status-inquiry |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_status-inquiry_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T28664 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/status-inquiry |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28635 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/status-inquiry   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28636  @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/status-inquiry |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T28665 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/status-inquiry   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33002 @Regression
  Scenario Outline: Verify "/status-inquiry" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/status-inquiry1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Invalid_Endpoint_404.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33008 @Regression
  Scenario Outline: Verify "/status-inquiry" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/status-inquiry | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Request_Method_Not_Supported_405.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28638 @Regression 
  Scenario Outline: Verify "/status-inquiry" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/status-inquiry   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_status-inquiry_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_status-inquiry_Response_Regression_Internal_Server_Error_500.json|

@TestCaseKey=UDB-T28651 @Regression 
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stopchequepayment.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment.json|
     
 
  @TestCaseKey=UDB-T28652 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stopchequepayment.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression.json|
  
  
    @TestCaseKey=UDB-T28655 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |CS_stop-cheque-payment_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T28666 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T28653 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T28654 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T28668 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T33005 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment1  |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Invalid_Endpoint_404.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json| \src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T33011 @Regression
  Scenario Outline: Verify "/stop-cheque-payment" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment | \src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Request_Method_Not_Supported_405.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T28656 @Regression 
  Scenario Outline: Verify "/stop-cheque-payment" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | chequeservice |/stop-cheque-payment   |\src\test\resources\testdata\api\request\Drop2\chequeservice\CS_stop-cheque-payment_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\chequeservice\CS_stop-cheque-payment_Response_Regression_Internal_Server_Error_500.json|

########################################################################################################
#  End2End Test Cases Below
########################################################################################################


  @TestCaseKey=UDB-T35003 @E2E
   Scenario Outline: Verify that cheque-leafs for given account number(UDB-T35003)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
     @TestCaseKey=UDB-T35003 @E2E
     Scenario Outline: Verify that stop-cheque-payment for given account number and cheque number(UDB-T35003)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_stopchequepayment.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_stopchequepayment.json|
       
  
   @TestCaseKey=UDB-T35004 @E2E
   Scenario Outline: Verify that cheque-leafs for given account number(UDB-T35004)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
     @TestCaseKey=UDB-T35004 @E2E
    Scenario Outline: Verify that Status inquiry for given account number and cheque number(UDB-T35004)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_statusinquiry.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_statusinquiry.json|
     
    
     @TestCaseKey=UDB-T35005 @E2E
  Scenario Outline: Verify that Positive-pay-limit for given account number and cheque number(UDB-T35005)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_positivepaylimit.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_positivepaylimit.json|
      
       @TestCaseKey=UDB-99996 @E2E
  Scenario Outline: Verify that book request for given account number and number of leaves(UDB-99996)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\CS_bookrequest.json|accountNumber|accounts[8].acctNum|CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_bookrequest.json|
    
  
########################################################################################################
#  Test Data End2End Test Cases Below
########################################################################################################    
 
  
   @TestdataE2E @TestCaseKey=UDB-T35011
   Scenario Outline: Verify that cheque-leafs for Savings account(UDB-T35011)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
    @TestdataE2E  @TestCaseKey=UDB-T35011
     Scenario Outline: Verify that stop-cheque-payment for Savings account number and cheque number(UDB-T35011)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35011_01_01.json|accountNumber|accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35011_02_01.json|
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35011_01_02.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35011_02_02.json|
     
     
 
   
   @TestdataE2E @TestCaseKey=UDB-T35012
   Scenario Outline: Verify that cheque-leafs for Current account(UDB-T35012)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[3].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
     @TestdataE2E @TestCaseKey=UDB-T35012
     Scenario Outline: Verify that stop-cheque-payment for Current account number and cheque number(UDB-T35012)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35012_01_01.json|accountNumber|accounts[3].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35012_02_01.json|
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35012_01_01.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35012_02_02.json|
     
     
 
    
  @TestdataE2E @TestCaseKey=UDB-T35013
   Scenario Outline: Verify that cheque-leafs for Overdraft account(UDB-T35013)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[6].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
    @TestdataE2E @TestCaseKey=UDB-T35013
     Scenario Outline: Verify that stop-cheque-payment for Overdraft account number and cheque number(UDB-T35013)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35013_01_01.json|accountNumber|accounts[6].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35013_02_01|
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35013_01_02.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35013_02_02.json|
     

  
   
  @TestdataE2E @TestCaseKey=UDB-T35014
   Scenario Outline: Verify that cheque-leafs for Savings account(UDB-T35014)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[8].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
    @TestdataE2E @TestCaseKey=UDB-T35014
    Scenario Outline: Verify that Status inquiry for Savings account number and cheque number(UDB-T35014)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35014_01_01.json|accountNumber|accounts[8].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35014_02_01.json|
			| chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35014_01_02.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35014_02_02.json|
     
    @TestdataE2E @TestCaseKey=UDB-T35015
   Scenario Outline: Verify that cheque-leafs for Current Account(UDB-T35015)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[3].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
     @TestdataE2E @TestCaseKey=UDB-T35015
    Scenario Outline: Verify that Status inquiry for given current number and cheque number(UDB-T35015)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
       | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35015_01_01.json|accountNumber|accounts[3].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35015_02_01.json|
			| chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35015_01_01.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35015_02_02.json|

  @TestdataE2E @TestCaseKey=UDB-T35016
   Scenario Outline: Verify that cheque-leafs for Overdraft Account(UDB-T35016)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_chequeleafs.json|accountNumber|accounts[6].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_chequeleafs.json|
     
    @TestdataE2E @TestCaseKey=UDB-T35016
    Scenario Outline: Verify that Status inquiry for overdraft account number and cheque number(UDB-T35016)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
       | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35016_01_01.json|accountNumber|accounts[6].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35016_02_01.json|
			| chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35016_01_02.json|chequeNumber|chequeLeafs[7].chequeLeafNumber|CS_chequeleafs.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35016_02_02.json|
 

     
     
   @TestdataE2E  @TestCaseKey=UDB-T35017
  Scenario Outline: Verify that Positive-pay-limit for Savings account number(UDB-T35017)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_positivepaylimit.json|cifId,accountNumber|accounts[12].cif,accounts[12].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_positivepaylimit.json|
      
  

    @TestdataE2E  @TestCaseKey=UDB-T35018
  Scenario Outline: Verify that Positive-pay-limit for current account number(UDB-T35018)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_positivepaylimit.json|cifId,accountNumber|accounts[3].cif,accounts[3].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_positivepaylimit.json|
      
     

   @TestdataE2E  @TestCaseKey=UDB-T35019
  Scenario Outline: Verify that Positive-pay-limit for overdraft account number(UDB-T35019)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\CS_positivepaylimit.json|cifId,accountNumber|accounts[9].cif,accounts[9].acctNum |CS_accountinfo.json|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_positivepaylimit.json|
      
    @TestdataE2E   @TestCaseKey=UDB-T35835 
  Scenario Outline: Verify that book request for Savings account number and number of leaves(UDB-T35835)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\CS_bookrequest.json|accountNumber|accounts[8].acctNum|CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_bookrequest.json|
    
   @TestdataE2E   @TestCaseKey=UDB-T35836 
  Scenario Outline: Verify that book request for Current account number and number of leaves(UDB-T35836)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-99998_01.json|accountNumber|accounts[7].acctNum|CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-99998_02.json|
   
    @TestdataE2E  @TestCaseKey=UDB-T35837 
  Scenario Outline: Verify that book request for given account number and number of leaves(UDB-T35837)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\CS_bookrequest.json|accountNumber|accounts[6].acctNum|CS_accountinfo.json|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\CS_bookrequest.json|
 
########################################################################################################
#  Edge Test Cases Below
######################################################################################################## 

   @Edge @TestCaseKey=UDB-T35006
  Scenario Outline: Verify /book-request API for incorrect account number and incorrect number of leaves(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody | requestField |responsefield     | filename                                                                                    | responseBody                                                                                           |
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35007_01_01.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35007_02_01.json|
      | chequeservice | /book-request |src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35007_01_02.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35007_02_02.json|
      
   @Edge   @TestCaseKey=UDB-T35007
  Scenario Outline: Verify  /status-inquiry API  for incorrect account number and incorrect cheque number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35008_01_01.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35008_02_01.json|
      | chequeservice | /status-inquiry |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35008_01_02.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35008_02_02.json|
    
   @Edge   @TestCaseKey=UDB-T35008
  Scenario Outline: Verify  /positive-pay-limit API  for incorrect account number and incorrect cifId(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35009_01_01.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35009_02_01.json|
      | chequeservice | /positive-pay-limit |\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35009_01_02.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35009_02_02.json|
       
   @Edge   @TestCaseKey=UDB-T35009  
  Scenario Outline: Verify  /cheque-leafs API  for incorrect account number and account number without any cheque leafs(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35010_01_01.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35010_02_01.json|
      | chequeservice | /cheque-leafs|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T35010_01_02.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T35010_02_02.json|
      
   @Edge   @TestCaseKey=UDB-T35010
  Scenario Outline: Verify  /stop-cheque-payment API  for incorrect account number and incorrect cheque number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField |responsefield     | filename                                                                                     | responseBody                                                                                           |
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T34925_01_01.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T34925_02_01.json|
      | chequeservice | /stop-cheque-payment|\src\test\resources\testdata\api\request\Drop2\ChequeService\UDB-T34925_01_02.json|null|null|null|\src\test\resources\testdata\api\response\expected\Drop2\ChequeService\UDB-T34925_02_02.json|
      
 