# Feature: General Services API
# Author: Sachin Ghorpade and Gauri Mate
# Description: Regression Testing : General Services API
# Test Environment: SIT
# Preconditions: General Services API should be up and running

#####################################################################################
Feature: Regression Test of General Service API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for drop2/GeneralService 
#####################################################################################

 @TestCaseKey=UDB-T7632 @Regression 
 Scenario Outline: Verify get customer account details with cif for valid customer
 			Given user sets the environment of endpoint
			Given user set the basepath to <service>
			Then set the endpoint <endpoint>
			Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
			Then user triggers a post request to get customer accounts <requestBody>
			Then user verifies that status is 200
			Then user verifies json from <responseBody>
			
						
			Examples:
			
			| service        | endpoint         | requestBody |requestField   |responsefield      | filename       | responseBody                    |
			 | customer |/getCustomerAccounts |src\test\resources\testdata\api\request\Drop2\GeneralService\Customer_getCustomerAccounts.json|null |null| null |src\test\resources\testdata\api\response\expected\Drop2\GeneralService\Customer_getCustomerAccounts.json|
 
	######################## getAddress ###########################################################
	@TestCaseKey=UDB-T30933 @Regression 
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>


    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |getAddress   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Mandatory_Optional_200.json|cif,acctNum            |[0].cif,[0].acctNum     | Customer_getCustomerAccounts.json     | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T30934 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |getAddress   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Mandatory_200.json|cif            |[0].cif    | Customer_getCustomerAccounts.json  | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T30935 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getAddress |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Only_Optional Fields_400.json|acctNum            |[20].acctNum      | Customer_getCustomerAccounts.json    | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Only_Optional Fields_400.json|
      
    @TestCaseKey=UDB-T30939 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getAddress |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_getAddress_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T30940 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getAddress |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T30936 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getAddress   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T30937 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |getAddress |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T30938 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |getAddress   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T30942 @Regression
  Scenario Outline: Verify "/getAddress" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |getAddress1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Invalid_Endpoint_404.json|cif,acctNum            |[0].cif,[0].acctNum     | Customer_getCustomerAccounts.json          | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T30941 @Regression
  Scenario Outline: Verify "/getAddress" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |getAddress | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Request_Method_Not_Supported_405.json|cif,acctNum            |[0].cif,[0].acctNum     | Customer_getCustomerAccounts.json      |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T30943 @Regression 
  Scenario Outline: Verify "/getAddress" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |getAddress   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getAddress_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getAddress_Response_Regression_Internal_Server_Error_500.json|

 ######################## getProfileDetails ###########################################################
	@TestCaseKey=UDB-T30945 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |getProfileDetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Mandatory_Optional_200.json|cif,name |[0].cif,[0].customerName  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T30946 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |getProfileDetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Mandatory_200.json|cif |[0].cif | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T30947 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getProfileDetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Only_Optional Fields_400.json|name|accounts[0].name|Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Only_Optional Fields_400.json|
      
   @TestCaseKey=UDB-T30951 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getProfileDetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_getProfileDetails_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T30952 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getProfileDetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T30948 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getProfileDetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T30949 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |getProfileDetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T30950 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |getProfileDetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T30954 @Regression
  Scenario Outline: Verify "/getProfileDetails" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |getProfileDetails1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Invalid_Endpoint_404.json|cif,name |[0].cif,[0].customerName  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T30953 @Regression
  Scenario Outline: Verify "/getProfileDetails" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |getProfileDetails | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Request_Method_Not_Supported_405.json|cif,name |[0].cif,[0].customerName  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T30955 @Regression 
  Scenario Outline: Verify "/getProfileDetails" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |getProfileDetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getProfileDetails_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getProfileDetails_Response_Regression_Internal_Server_Error_500.json|

 ######################## getMiniTransactionStatement ###########################################################
 @TestCaseKey=UDB-T30957 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Mandatory_Optional_200.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T30958 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Mandatory_200.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T30959 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Only_Optional Fields_400.json|null           |null        | null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Only_Optional Fields_400.json|
      
    @TestCaseKey=UDB-T30963 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_getMiniTransactionStatement_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T30964 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T30960 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T30961 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T30962 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T30966 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Invalid_Endpoint_404.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T30965 @Regression
  Scenario Outline: Verify "/getMiniTransactionStatement" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Request_Method_Not_Supported_405.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T30967 @Regression 
  Scenario Outline: Verify "/getMiniTransactionStatement" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |getMiniTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement_Response_Regression_Internal_Server_Error_500.json|
 
 ######################## emailStatement ###########################################################  
@TestCaseKey=UDB-T30993 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |emailStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Mandatory_Optional_200.json|cif,acctNum |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T30994 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |emailStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Mandatory_200.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T30995 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |emailStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Only_Optional Fields_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Only_Optional Fields_400.json|
      
    @TestCaseKey=UDB-T30999 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |emailStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_emailStatement_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31000 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |emailStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T30996 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |emailStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T30997 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |emailStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T30998 @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |emailStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31002  @Regression
  Scenario Outline: Verify "/emailStatement" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |emailStatement1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Invalid_Endpoint_404.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31001 @Regression
  Scenario Outline: Verify "/emailStatement" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |emailStatement | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Request_Method_Not_Supported_405.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31003 @Regression 
  Scenario Outline: Verify "/emailStatement" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |emailStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement_Response_Regression_Internal_Server_Error_500.json|

######################## fetchloandetails ###########################################################
  @TestCaseKey=UDB-T31078  @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |fetchloandetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails.json|cif            |[20].cif         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails.json|
  
 
      
    @TestCaseKey=UDB-T31083  @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |fetchloandetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_fetchloandetails_Response_Regression_Mandatory_Field_Invalid_400.json|
  
  @TestCaseKey=UDB-T31084 @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |fetchloandetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31080  @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |fetchloandetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Request_Body_Blank_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31081 @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |fetchloandetails |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Invalid_Json_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Invalid_Json_400.json|
  
   @TestCaseKey=UDB-T31082   @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |fetchloandetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31086  @Regression
  Scenario Outline: Verify "/fetchloandetails" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |fetchloandetails1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Invalid_Endpoint_404.json|cif            |[20].cif         | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31085  @Regression
  Scenario Outline: Verify "/fetchloandetails" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody|requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |fetchloandetails | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Request_Method_Not_Supported_405.json|cif            |[20].cif         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31087    @Regression 
  Scenario Outline: Verify "/fetchloandetails" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |fetchloandetails   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_fetchloandetails_Request_Regression_Internal_Server_Error_500.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_fetchloandetails_Response_Regression_Internal_Server_Error_500.json|
      
  ######################## individual loan-interest-cert ###########################################################   
  @TestCaseKey=UDB-T31053 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Mandatory_Optional_200.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T31054 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Mandatory_200.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T31055 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Only_Optional Fields_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Only_Optional Fields_400.json|
      
    @TestCaseKey=UDB-T31059 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|Customer_getCustomerAccounts.json |GS_loan-interest-cert_Individual_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31060 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31056 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31057 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Invalid_Json_400.json|
  
@TestCaseKey=UDB-T31058 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31062 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |loan-interest-cert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Invalid_Endpoint_404.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31061 @Regression
  Scenario Outline: Verify individual "/loan-interest-cert" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |loan-interest-cert | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Request_Method_Not_Supported_405.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31063 @Regression 
  Scenario Outline: Verify individual "/loan-interest-cert" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual_Response_Regression_Internal_Server_Error_500.json|
      
  ######################## consolidated loan-interest-cert ###########################################################
  @TestCaseKey=UDB-T31101 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Mandatory_Optional_200.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T31102 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Mandatory_200.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T31103 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Only_Optional Fields_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Only_Optional Fields_400.json|
      
    @TestCaseKey=UDB-T31107 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_loan-interest-cert_consolidated_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31108 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31104 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31105 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |loan-interest-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T31106 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31110 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |loan-interest-cert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Invalid_Endpoint_404.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31109 @Regression
  Scenario Outline: Verify consolidated "/loan-interest-cert" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |loan-interest-cert | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Request_Method_Not_Supported_405.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31111 @Regression 
  Scenario Outline: Verify consolidated "/loan-interest-cert" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |loan-interest-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_consolidated_Response_Regression_Internal_Server_Error_500.json|
      
######################## getTransactionStatement ###########################################################
 @TestCaseKey=UDB-T30981 @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                 | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |getTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Mandatory_Optional_200.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_200.json|
     
 
  @TestCaseKey=UDB-T30982  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |getTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Mandatory_200.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T30983  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Only_Optional Fields_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Only_Optional Fields_400.json|
      
   @TestCaseKey=UDB-T30987  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|Customer_getCustomerAccounts.json |GS_getTransactionStatement_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T30988 @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
  @TestCaseKey=UDB-T30984  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |getTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Request_Body_Blank_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T30985  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |getTransactionStatement |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Invalid_Json_400.json|null|null|Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T30986  @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |getTransactionStatement|\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T30990 @Regression
  Scenario Outline: Verify "/getTransactionStatement" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |getTransactionStatement1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Invalid_Endpoint_404.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T30989 @Regression
  Scenario Outline: Verify "/getTransactionStatement" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |getTransactionStatement | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Request_Method_Not_Supported_405.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T30991   @Regression 
  Scenario Outline: Verify "/getTransactionStatement" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |getTransactionStatement   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement_Response_Regression_Internal_Server_Error_500.json|  
   
  ######################## transactionStatementPdf ###########################################################
  @TestCaseKey=UDB-T31006 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |transactionStatementPdf   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Mandatory_200.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_200.json|
  
  @TestCaseKey=UDB-T31007 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 with Only Optional fields available in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |transactionStatementPdf |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Only_Optional Fields_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Only_Optional Fields_400.json|
      
   @TestCaseKey=UDB-T31011 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |transactionStatementPdf |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_transactionStatementPdf_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31012 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |transactionStatementPdf |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31008 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |transactionStatementPdf   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31009 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |transactionStatementPdf |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T31010 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | generalservice |transactionStatementPdf  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31014 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |transactionStatementPdf1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Invalid_Endpoint_404.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31013 @Regression
  Scenario Outline: Verify "/transactionStatementPdf" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |transactionStatementPdf | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Request_Method_Not_Supported_405.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31015 @Regression 
  Scenario Outline: Verify "/transactionStatementPdf" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |transactionStatementPdf   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_transactionStatementPdf_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_transactionStatementPdf_Response_Regression_Internal_Server_Error_500.json|  
      
 
    ######################## balance-cert ########################################################### 
 
  @TestCaseKey=UDB-T31042 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |balance-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Mandatory_200.json|acctId            |[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_200.json|
  
 
      
    @TestCaseKey=UDB-T31047 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_balance-cert_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31048 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31044 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31045 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |balance-cert |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T31046 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                            | responseBody                                                                                           |
      | generalservice |balance-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31050 @Regression
  Scenario Outline: Verify "/balance-cert" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |balance-cert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Invalid_Endpoint_404.json|acctId            |[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31049 @Regression
  Scenario Outline: Verify "/balance-cert" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |balance-cert | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Request_Method_Not_Supported_405.json|acctId            |[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31051 @Regression 
  Scenario Outline: Verify "/balance-cert" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |balance-cert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance-cert_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance-cert_Response_Regression_Internal_Server_Error_500.json|

######################## balance ###########################################################      
   @TestCaseKey=UDB-T31089 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                         | responseBody                                                                                           |
      | generalservice |balance   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance.json|acctId            |[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance.json|
     
 
  @TestCaseKey=UDB-T31090 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                 | responseBody                                                                                           |
      | generalservice |balance   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Mandatory_200.json|acctId            |[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_200.json|
  
  
   @TestCaseKey=UDB-T31095 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |GS_balance_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T31096 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T31092 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | generalservice |balance   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T31093 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | generalservice |balance |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T31094 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | generalservice |balance  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T31098 @Regression
  Scenario Outline: Verify "/balance" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | generalservice |balance1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Invalid_Endpoint_404.json|acctId            |[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T31097 @Regression
  Scenario Outline: Verify "/balance" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | generalservice |balance | \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Request_Method_Not_Supported_405.json|acctId            |[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T31099 @Regression 
  Scenario Outline: Verify "/balance" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | generalservice |balance   |\src\test\resources\testdata\api\request\Drop2\GeneralService\GS_balance_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_balance_Response_Regression_Internal_Server_Error_500.json|  
   
  ######################## getLocateAtm ###########################################################
    @TestCaseKey=UDB-T35332 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |getLocateAtm|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm.json|cif|[20].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm.json|
      
  
   @TestCaseKey=UDB-T35336 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateAtm |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_getLocateAtm_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35337 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateAtm |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35333 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateAtm   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35334 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |getLocateAtm |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35335 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |getLocateAtm  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35339 @Regression
  Scenario Outline: Verify "/getLocateAtm" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |getLocateAtm1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Invalid_Endpoint_404.json|cif            |[1].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35338 @Regression
  Scenario Outline: Verify "/getLocateAtm" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |getLocateAtm | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Request_Method_Not_Supported_405.json|cif            |[1].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35340 @Regression 
  Scenario Outline: Verify "/getLocateAtm" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |getLocateAtm   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateAtm_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateAtm_Response_Regression_Internal_Server_Error_500.json|  


######################## getLocateBranch ###########################################################   
     @TestCaseKey=UDB-T35342 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |getLocateBranch|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch.json|cif            |[1].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch.json|
     
  
   @TestCaseKey=UDB-T35346 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateBranch |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_getLocateBranch_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35347 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateBranch |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35343 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |getLocateBranch   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35344 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |getLocateBranch |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35345 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |getLocateBranch  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35349 @Regression
  Scenario Outline: Verify "/getLocateBranch" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |getLocateBranch1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Invalid_Endpoint_404.json|cif            |[1].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35348 @Regression
  Scenario Outline: Verify "/getLocateBranch" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |getLocateBranch | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Request_Method_Not_Supported_405.json|cif            |[1].cif | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35350 @Regression 
  Scenario Outline: Verify "/getLocateBranch" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |getLocateBranch   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_getLocateBranch_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_getLocateBranch_Response_Regression_Internal_Server_Error_500.json|  
   
   ######################## searchByLocation ###########################################################
     @TestCaseKey=UDB-T35352 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

   Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |searchByLocation|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation.json|null |null  | null   |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation.json|
       
  
   @TestCaseKey=UDB-T35356 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |searchByLocation |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_searchByLocation_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35357 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |searchByLocation |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35353 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |searchByLocation   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35354 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |searchByLocation |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35355 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |searchByLocation  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35359 @Regression
  Scenario Outline: Verify "/searchByLocation" API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |searchByLocation1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Invalid_Endpoint_404.json|null |null  | null  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35358 @Regression
  Scenario Outline: Verify "/searchByLocation" API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |searchByLocation | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Request_Method_Not_Supported_405.json|null |null  | null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35360 @Regression 
  Scenario Outline: Verify "/searchByLocation" API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |searchByLocation   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_searchByLocation_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_searchByLocation_Response_Regression_Internal_Server_Error_500.json|  
   
   ######################## Individual downloadTdsCert ########################################################### 
    @TestCaseKey=UDB-T35312 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

     Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|
     
  
   @TestCaseKey=UDB-T35316 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_downloadTdsCert_Individual_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35317 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35313 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35314 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35315 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |downloadTdsCert  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35319 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |downloadTdsCert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Invalid_Endpoint_404.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35318 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Individual API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |downloadTdsCert | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Request_Method_Not_Supported_405.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35320 @Regression 
  Scenario Outline: Verify "/downloadTdsCert" Individual API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |downloadTdsCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual_Response_Regression_Internal_Server_Error_500.json|  
      
   ######################## Consolidated downloadTdsCert ###########################################################    
  @TestCaseKey=UDB-T30969 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|
     
  
   @TestCaseKey=UDB-T35296 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_downloadTdsCert_Consolidated_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35297 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35293 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadTdsCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35294 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |downloadTdsCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35295 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |downloadTdsCert  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35299 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |downloadTdsCert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Invalid_Endpoint_404.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35298 @Regression
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |downloadTdsCert | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Request_Method_Not_Supported_405.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35300 @Regression 
  Scenario Outline: Verify "/downloadTdsCert" Consolidated API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |downloadTdsCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated_Response_Regression_Internal_Server_Error_500.json|  
      
   ######################## Consolidated downloadInterestCert ###########################################################    
  @TestCaseKey=UDB-T35302 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

     Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|
     
  
   @TestCaseKey=UDB-T35306 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_downloadInterestCert_Consolidated_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35307 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35303 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35304 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35305 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |downloadInterestCert  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35309 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |downloadInterestCert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Invalid_Endpoint_404.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35308 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |downloadInterestCert | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Request_Method_Not_Supported_405.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35310 @Regression 
  Scenario Outline: Verify "/downloadInterestCert" Consolidated API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |downloadInterestCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated_Response_Regression_Internal_Server_Error_500.json|  
      
   ######################## Individual downloadInterestCert ###########################################################    
  @TestCaseKey=UDB-T35322 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|
     
  
   @TestCaseKey=UDB-T35326 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |BS_downloadInterestCert_Individual_Response_Regression_Mandatory_Field_Invalid_400.json|
  
   @TestCaseKey=UDB-T35327 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-T35323 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                          | responseBody                                                                                           |
      | businessServices |downloadInterestCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Request_Body_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-T35324 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename                                                                                                                    | responseBody                                                                                           |
      | businessServices |downloadInterestCert |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Invalid_Json_400.json|
  
  @TestCaseKey=UDB-T35325 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                         | responseBody                                                                                           |
      | businessServices |downloadInterestCert  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Mandatory_Field_Blank_400.json|
      
 @TestCaseKey=UDB-T35329 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API "POST" Method for Status code 404 if endpoint is Invalid
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                        | responseBody                                                                                           |
      | businessServices |downloadInterestCert1  |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Invalid_Endpoint_404.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Invalid_Endpoint_404.json|

 @TestCaseKey=UDB-T35328 @Regression
  Scenario Outline: Verify "/downloadInterestCert" Individual API for Status code 405 if HTTP method is other than POST  for Eg: GET, PUT, Delete
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a get request with <requestBody>
    Then user verifies that status is 405
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint  | requestBody |requestField|responsefield|filename 																																																																		| responseBody                                                                                           |
      | businessServices |downloadInterestCert | \src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Request_Method_Not_Supported_405.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Request_Method_Not_Supported_405.json|


 @TestCaseKey=UDB-T35330 @Regression 
  Scenario Outline: Verify "/downloadInterestCert" Individual API for Status code 500 Error "Internal Server Error" 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 500
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint    | requestBody |requestField|responsefield|filename                                                                                                                             | responseBody                                                                                           |
      | businessServices |downloadInterestCert   |\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual_Request_Regression_Internal_Server_Error_500.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual_Response_Regression_Internal_Server_Error_500.json|
      
  
########################################################################################################
#  End2End Test Cases Below
######################################################################################################## 
     

     @TestCaseKey=UDB-T34850 @E2E
    Scenario Outline: Verify that Mini Statement details are fetched by cif using api getMiniTransactionStatement(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getMiniTransactionStatement.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getMiniTransactionStatement.json|      
  		
  
 		 @TestCaseKey=UDB-T34851 @E2E
   Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatement(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                | requestBody |requestField   |responsefield      | filename      |responseBody                                                                                                  |
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatement.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatement.json|
     
 		 @TestCaseKey=UDB-T34852 @E2E
   Scenario Outline: Verify that Statement details are sent via email by cif using api emailStatement(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename                               | responseBody                                                                          |
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_emailStatement.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_emailStatement.json|
      
      
  
    	 @TestCaseKey=UDB-T34853	@E2E
  Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatementpdf(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                | requestBody |requestField   |responsefield      | filename      |responseBody                                                                                                  |
      | generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_getTransactionStatementPdf.json|cif,acctNum |[20].cif,[20].acctNum  | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_getTransactionStatementPdf.json|
   
   
      @TestCaseKey=UDB-T34854 @E2E
   Scenario Outline: Verify that balance certificate details are fetched using api balance-cert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_SBA.json|acctId            |[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_SBA.json| #SBA     
  		
       @TestCaseKey=UDB-T34855 @E2E
   Scenario Outline: Verify that individual loan interest certificate details are fetched using api loan-interest-cert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody |requestField   |responsefield      | filename     | responseBody           |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Individual.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Individual.json|
      
    
        @TestCaseKey=UDB-T34856 @E2E
   Scenario Outline: Verify that consolidated loan interest certificate details are fetched using api loan-interest-cert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody  |requestField   |responsefield      | filename    | responseBody          |
      | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_Consolidated.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType| GS_fetchloandetails.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_Consolidated.json|                                            
    
       @TestCaseKey=UDB-T34857 @E2E
    Scenario Outline: Verify that Consolidated TDS Certificate downloaded using api downloadTdsCert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Consolidated.json|
        
         @TestCaseKey=UDB-T34858 @E2E
     Scenario Outline: Verify that Individual TDS Certificate downloaded using api downloadTdsCert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_Individual.json|
   
           @TestCaseKey=UDB-T34859 @E2E
    Scenario Outline: Verify that Individual Interest Certificate downloaded using api downloadInterestCert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Individual.json|
     
   
        @TestCaseKey=UDB-T34860 @E2E
    Scenario Outline: Verify that Consolidated Interest Certificate downloaded using api downloadInterestCert(E2E)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json  |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_Consolidated.json|
     
    
########################################################################################################
#  Test Data End2End Test Cases Below
######################################################################################################## 
    
    @TestdataE2E 
    @TestCaseKey=UDB-T34861
		@TestCaseKey=UDB-T34862
		@TestCaseKey=UDB-T34863
		@TestCaseKey=UDB-T34864
		@TestCaseKey=UDB-T34865
		@TestCaseKey=UDB-T34866
		@TestCaseKey=UDB-T34867
		@TestCaseKey=UDB-T34868
		@TestCaseKey=UDB-T34869
    Scenario Outline: Verify that Mini Statement details are fetched by cif using api getMiniTransactionStatement(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_SBA.json|cif,acctNum,acctType            |[20].cif,[20].acctNum,[20].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_SBA.json| #SBA     
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_CA.json|cif,acctNum,acctType            |[11].cif,[11].acctNum,[11].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_CA.json| #CA
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_ODA.json|cif,acctNum,acctType            |[09].cif,[09].acctNum,[09].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_ODA.json| #ODA
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_FD.json|cif,acctNum,acctType						 |[03].cif,[03].acctNum,[03].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_FD.json| #FD
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_TDA.json|cif,acctNum,acctType            |[01].cif,[01].acctNum,[01].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_TDA.json| #TDA
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_HL.json|cif,acctNum,acctType            |[16].cif,[16].acctNum,[16].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_HL.json| #HL 
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_EL.json|cif,acctNum,acctType            |[12].cif,[12].acctNum,[12].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_EL.json| #EL
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_PL.json|cif,acctNum,acctType            |[14].cif,[14].acctNum,[14].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_PL.json| #PL
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_VL.json|cif,acctNum,acctType            |[18].cif,[18].acctNum,[18].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getMiniTransactionStatement_VL.json| #VL
  		
  		
   
 		@TestdataE2E
 		@TestCaseKey=UDB-T34870
		@TestCaseKey=UDB-T34871
		@TestCaseKey=UDB-T34872
		@TestCaseKey=UDB-T34873
		@TestCaseKey=UDB-T34874
		@TestCaseKey=UDB-T34875
		@TestCaseKey=UDB-T34876
		@TestCaseKey=UDB-T34877
		@TestCaseKey=UDB-T34878
		@TestCaseKey=UDB-T34879
   Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatement(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

   Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_SBA.json|cif,acctNum            |[20].cif,[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_SBA.json| #SBA     
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_CA.json|cif,acctNum            |[11].cif,[11].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_CA.json| #CA
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_ODA.json|cif,acctNum           |[09].cif,[09].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_ODA.json| #ODA
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_FD.json|cif,acctNum						 |[02].cif,[02].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_FD.json| #FD
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_RD.json|cif,acctNum           |[01].cif,[01].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_RD.json| #RD
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_TDA.json|cif,acctNum           |[0].cif,[0].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_TDA.json| #TDA
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_HL.json|cif,acctNum           |[16].cif,[16].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_HL.json| #HL 
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_EL.json|cif,acctNum            |[12].cif,[12].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_EL.json| #EL
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_PL.json|cif,acctNum           |[14].cif,[14].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_PL.json| #PL
  		| generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_VL.json|cif,acctNum            |[18].cif,[18].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_getTransactionStatement_VL.json| #VL
  		
  
 		@TestdataE2E 
 		@TestCaseKey=UDB-T34880
		@TestCaseKey=UDB-T34881
		@TestCaseKey=UDB-T34882
		@TestCaseKey=UDB-T34883
		@TestCaseKey=UDB-T34884
		@TestCaseKey=UDB-T34885
		@TestCaseKey=UDB-T34886
		@TestCaseKey=UDB-T34887
		@TestCaseKey=UDB-T34888
		@TestCaseKey=UDB-T34889
   Scenario Outline: Verify that Statement details are sent via email by cif using api emailStatement(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>
    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_SBA.json|cif,acctNum,acctType            |[20].cif,[20].acctNum,[20].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_SBA.json| #SBA     
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_CA.json|cif,acctNum,acctType            |[11].cif,[11].acctNum,[11].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_CA.json| #CA
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_ODA.json|cif,acctNum,acctType            |[09].cif,[09].acctNum,[09].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_ODA.json| #ODA
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_FD.json|cif,acctNum,acctType						 |[02].cif,[02].acctNum,[02].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_FD.json| #FD
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_RD.json|cif,acctNum,acctType            |[01].cif,[01].acctNum,[01].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_RD.json| #RD
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_TDA.json|cif,acctNum,acctType            |[0].cif,[0].acctNum,[0].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_TDA.json| #TDA
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_HL.json|cif,acctNum,acctType            |[16].cif,[16].acctNum,[16].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_HL.json| #HL 
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_EL.json|cif,acctNum,acctType            |[12].cif,[12].acctNum,[12].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_EL.json| #EL
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_PL.json|cif,acctNum,acctType            |[14].cif,[14].acctNum,[14].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_PL.json| #PL
  		| generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_emailStatement_VL.json|cif,acctNum,acctType            |[18].cif,[18].acctNum,[18].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_emailStatement_VL.json| #VL
  		
   
    	@TestdataE2E 	
    	@TestCaseKey=UDB-T34890
			@TestCaseKey=UDB-T34891
			@TestCaseKey=UDB-T34892
			@TestCaseKey=UDB-T34893
			@TestCaseKey=UDB-T34894
			@TestCaseKey=UDB-T34895
			@TestCaseKey=UDB-T34896
			@TestCaseKey=UDB-T34897
			@TestCaseKey=UDB-T34898
			@TestCaseKey=UDB-T34899
  Scenario Outline: Verify that transaction Statement details are fetched by cif using api getTransactionStatementpdf(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

   Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_SBA.json|cif,acctNum,acctType            |[20].cif,[20].acctNum,[20].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_SBA.json| #SBA     
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_CA.json|cif,acctNum,acctType            |[11].cif,[11].acctNum,[11].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_CA.json| #CA
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_ODA.json|cif,acctNum,acctType            |[09].cif,[09].acctNum,[09].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_ODA.json| #ODA
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_FD.json|cif,acctNum,acctType						 |[02].cif,[02].acctNum,[02].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_FD.json| #FD
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_TDA.json|cif,acctNum,acctType            |[0].cif,[0].acctNum,[0].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_TDA.json| #TDA
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_RD.json|cif,acctNum,acctType            |[01].cif,[01].acctNum,[01].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_RD.json| #RD
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_HL.json|cif,acctNum,acctType            |[16].cif,[16].acctNum,[16].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_HL.json| #HL 
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_EL.json|cif,acctNum,acctType            |[12].cif,[12].acctNum,[12].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_EL.json| #EL
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_PL.json|cif,acctNum,acctType            |[14].cif,[14].acctNum,[14].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_PL.json| #PL
  		| generalservice |transactionStatementPdf| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_VL.json|cif,acctNum,acctType            |[18].cif,[18].acctNum,[18].acctType         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_transactionStatementPdf_VL.json| #VL
  		
   
       	@TestdataE2E 
       	@TestCaseKey=UDB-T34900
				@TestCaseKey=UDB-T34901
				@TestCaseKey=UDB-T34902
				@TestCaseKey=UDB-T34903
				@TestCaseKey=UDB-T34904
				@TestCaseKey=UDB-T34905
				@TestCaseKey=UDB-T34906
				@TestCaseKey=UDB-T34907
				@TestCaseKey=UDB-T34908
				@TestCaseKey=UDB-T34909
   Scenario Outline: Verify that balance certificate details are fetched using api balance-cert(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_SBA.json|acctId            |[20].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_SBA.json| #SBA     
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_CA.json|acctId            |[11].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_CA.json| #CA
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_ODA.json|acctId            |[09].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_ODA.json| #ODA
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_FD.json|acctId			 |[02].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_FD.json| #FD
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_TDA.json|acctId            |[0].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_TDA.json| #TDA
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_RD.json|acctId            |[01].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_RD.json| #RD
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_HL.json|acctId            |[16].acctNum        | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_HL.json| #HL 
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_EL.json|acctId            |[12].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_EL.json| #EL
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_PL.json|acctId            |[14].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_PL.json| #PL
  		| generalservice |balance-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_TDE2E_balance-cert_VL.json|acctId            |[18].acctNum         | Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_TDE2E_balance-cert_VL.json| #VL
       
        @TestdataE2E
        @TestCaseKey=UDB-T34910
				@TestCaseKey=UDB-T34911
				@TestCaseKey=UDB-T34912
				@TestCaseKey=UDB-T34913
				@TestCaseKey=UDB-T34914
   Scenario Outline: Verify that individual loan interest certificate details are fetched using api loan-interest-cert(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 200
    Then user verifies json from <responseBody>
    
   Examples: 
     
    | service        | endpoint           | requestBody |requestField   |responsefield      | filename     | responseBody           |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_HL.json|accountNumber,solId,cif,schemeType |accountInfo[13].accountNumber,accountInfo[13].solId,accountInfo[13].customerId,accountInfo[13].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_HL.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_PL.json|accountNumber,solId,cif,schemeType |accountInfo[11].accountNumber,accountInfo[11].solId,accountInfo[11].customerId,accountInfo[11].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_PL.json|
		| generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_EL.json|accountNumber,solId,cif,schemeType |accountInfo[09].accountNumber,accountInfo[09].solId,accountInfo[09].customerId,accountInfo[09].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_EL.json|
		| generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_VL.json|accountNumber,solId,cif,schemeType |accountInfo[15].accountNumber,accountInfo[15].solId,accountInfo[15].customerId,accountInfo[15].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_VL.json|
		| generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\GS_loan-interest-cert_ODA.json|accountNumber,solId,cif,schemeType |accountInfo[0].accountNumber,accountInfo[0].solId,accountInfo[0].customerId,accountInfo[0].schemeType  | GS_fetchloandetails.json | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\GS_loan-interest-cert_ODA.json|
  
    @TestdataE2E 
    @TestCaseKey=UDB-T34915
		@TestCaseKey=UDB-T34916
		@TestCaseKey=UDB-T34917
     Scenario Outline: Verify that Individual TDS Certificate downloaded using api downloadTdsCert(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_TDA.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_TDA.json|
	  	| businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_RD.json|cif,accountNumber |[2].cif,[2].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_RD.json|
	  	| businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadTdsCert_FD.json|cif,accountNumber |[3].cif,[3].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadTdsCert_FD.json|
	  	
	  	
  
	      @TestdataE2E 
	      @TestCaseKey=UDB-T34918
				@TestCaseKey=UDB-T34919
				@TestCaseKey=UDB-T34920
    Scenario Outline: Verify that Individual Interest Certificate downloaded using api downloadInterestCert(TestdataE2E) 
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

   Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_TDA.json|cif,accountNumber |[1].cif,[1].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_TDA.json|
	  	| businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_RD.json|cif,accountNumber |[2].cif,[2].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_RD.json|
	  	| businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\BS_downloadInterestCert_FD.json|cif,accountNumber |[3].cif,[3].acctNum  |Customer_getCustomerAccounts.json |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\BS_downloadInterestCert_FD.json|
	  
  
########################################################################################################
#  Edge Test Cases Below
######################################################################################################## 

		@Edge @TestCaseKey=UDB-T34921
    Scenario Outline: Verify /balance API for different repDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | generalservice |balance|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34921_01_01.json|null|null | null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34921_02_01.json|
   		| generalservice |balance|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34921_01_02.json|null|null | null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34921_02_02.json|

 		@Edge	@TestCaseKey=UDB-T34922
    Scenario Outline: Verify  /balance-cert API  for different repDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody  |requestField   |responsefield      | filename      | responseBody |
      | generalservice |balance-cert      | \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34922_01_01.json |null|null| null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34922_02_01.json|      
      | generalservice |balance-cert      | \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34922_01_02.json |null|null| null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34922_02_02.json|
      | generalservice |balance-cert      | \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34922_01_03.json |null|null| null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34922_02_02.json|
      | generalservice |balance-cert      | \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34922_01_04.json |null|null| null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34922_02_02.json|
    
   @Edge   @TestCaseKey=UDB-T34923
 Scenario Outline: Verify  /getMiniTransactionStatement API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                    | requestBody|requestField   |responsefield      | filename      | responseBody        |
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34923_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34923_02_01.json|      
  		| generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34923_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34923_02_02.json|
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34923_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34923_02_03.json|
      | generalservice |getMiniTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34923_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34923_02_04.json|
      
    @Edge  	@TestCaseKey=UDB-T34924	
  Scenario Outline: Verify that /getTransactionStatement API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint                | requestBody |requestField   |responsefield      | filename      |responseBody                                                                                                  |
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34924_01_01.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34924_02_01.json|
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34924_01_02.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34924_02_02.json|
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34924_01_03.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34924_02_03.json|
      | generalservice |getTransactionStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34924_01_04.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34924_02_04.json|
    
   @Edge  @TestCaseKey=UDB-T34925 
	Scenario Outline: Verify that /emailStatement API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>
    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename                               | responseBody                                                                          |
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34925_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34925_02_01.json|
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34925_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34925_02_02.json|
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34925_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34925_02_03.json|
      | generalservice |emailStatement| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34925_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34925_02_04.json|
     
   @Edge @TestCaseKey=UDB-T34926
   Scenario Outline: Verify that /loan-interest-cert Consolidated API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 400
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody  |requestField   |responsefield      | filename    | responseBody          |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34926_01_01.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34926_02_01.json|                                            
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34926_01_02.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34926_02_02.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34926_01_03.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34926_02_03.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34926_01_04.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34926_02_04.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34926_01_05.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34926_02_05.json|
     
    @Edge 	@TestCaseKey=UDB-T34927
   Scenario Outline: Verify that /loan-interest-cert Individual API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
   Then user verifies that status is 400
    Then user verifies json from <responseBody>
    
    Examples:

    | service        | endpoint           | requestBody |requestField   |responsefield      | filename     | responseBody           |
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34927_01_01.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34927_02_01.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34927_01_02.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34927_02_02.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34927_01_03.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34927_02_03.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34927_01_04.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34927_02_04.json|
    | generalservice |loan-interest-cert| \src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34927_01_05.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34927_02_05.json|
    
    @Edge @TestCaseKey=UDB-T34928
    Scenario Outline: Verify that /downloadTdsCert Consolidated API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34928_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34928_02_01.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34928_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34928_02_02.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34928_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34928_02_03.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34928_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34928_02_04.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34928_01_05.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34928_02_05.json|
      
    @Edge  @TestCaseKey=UDB-T34929
    Scenario Outline: Verify that /downloadTdsCert Individual API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34929_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34929_02_01.json.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34929_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34929_02_02.json.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34929_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34929_02_03.json.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34929_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34929_02_04.json.json|
      | businessServices |downloadTdsCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34929_01_05.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34929_02_05.json.json|
      
     @Edge    @TestCaseKey=UDB-T34930
    Scenario Outline: Verify that /downloadInterestCert Consolidated API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34930_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34930_02_01.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34930_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34930_02_02.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34930_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34930_02_03.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34930_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34930_02_04.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34930_01_05.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34930_02_05.json|
      
     @Edge   @TestCaseKey=UDB-T34931
    Scenario Outline: Verify that /downloadInterestCert Individual API  for different startDate and endDate for given account number(Edge)
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service        | endpoint           | requestBody |requestField   |responsefield      | filename       | responseBody                    |
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34931_01_01.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34931_02_01.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34931_01_02.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34931_02_02.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34931_01_03.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34931_02_03.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34931_01_04.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34931_02_04.json|
      | businessServices |downloadInterestCert|\src\test\resources\testdata\api\request\Drop2\GeneralService\UDB-T34931_01_05.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\GeneralService\UDB-T34931_02_05.json|
      
      