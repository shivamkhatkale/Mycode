Feature: Regression Test for NCMC
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/NCMC

@TestCaseKey=UDB-T7632 
			 Scenario Outline: Verify get customer account details with cif for valid customer
			Given user sets the environment of endpoint
			Given user set the basepath to <service>
			Then set the endpoint <endpoint>
			Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
			Then user triggers a post request to get customer accounts <requestBody>
			Then user verifies that status is 200
			
			Examples:
			
			| service        | endpoint         | requestBody |requestField   |responsefield      | filename       | responseBody                    |
			 | customer |/getCustomerAccounts |src\test\resources\testdata\api\request\Drop2\NCMC\Customer_getCustomerAccounts.json|null |null| null |src\test\resources\testdata\api\response\expected\Drop2\NCMC\Customer_getCustomerAccounts.json|
 


@TestCaseKey=UDB-T32697 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmcfullStatment    |src\test\resources\testdata\api\request\Drop2\NCMC\200_ncmcfullStatment_Mandatory.json         |cif,acctNum         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json          |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_ncmcfullStatment_Mandatory.json|

@TestCaseKey=UDB- @Regression
Scenario Outline: Verify post ncmcfullStatment api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmcfullStatment    |src\test\resources\testdata\api\request\Drop2\NCMC\200_ncmcfullStatment_Mandatory_Optional.json         |cif,acctNum         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json           |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_ncmcfullStatment_Mandatory_Optional.json|



@TestCaseKey=UDB-T32700 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 400 response for Invalid JSON in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\400_ncmcfullStatment_Invalid_JSON.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_ncmcfullStatment_Invalid_JSON.json|

@TestCaseKey=UDB-T32699 @Regression 
Scenario Outline: Verify post ncmcfullStatment api returns 400 response for BLANK request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\400_ncmcfullStatment_Blank_Body.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_ncmcfullStatment_Blank_Body.json|

@TestCaseKey=UDB-T32701   @Regression 
Scenario Outline: Verify get ncmcfullStatment api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\405_ncmcfullStatment.json  |cif,acctNum         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\405_ncmcfullStatment.json|


@TestCaseKey=UDB-T32702  @Regression 
Scenario Outline: Verify get ncmcfullStatment api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment1    | src\test\resources\testdata\api\request\Drop2\NCMC\404_ncmcfullStatment.json  |cif,acctNum         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\404_ncmcfullStatment.json|


@TestCaseKey=UDB-T32698 @Regression 
Scenario Outline: Verify get ncmcfullStatment api returns 500 response for internal server error
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmcfullStatment    | src\test\resources\testdata\api\request\Drop2\NCMC\500_ncmcfullStatment.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\500_ncmcfullStatment.json|

@TestCaseKey=UDB-T32690 @Regression
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmc/wallet/details    |src\test\resources\testdata\api\request\Drop2\NCMC\200_ncmcwalletdetails_Mandatory.json         |cif        |[0].cif             |Customer_getCustomerAccounts.json          |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_ncmcwalletdetails_Mandatory.json|

@TestCaseKey=UDB-T32689 @Regression
Scenario Outline: Verify post ncmcwalletdetails api returns 200 response with Mandatory and optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |ncmc/wallet/details    |src\test\resources\testdata\api\request\Drop2\NCMC\200_ncmcwalletdetails_Mandatory_Optional.json         |cif,accountNumber         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json   |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_ncmcwalletdetails_Mandatory_Optional.json|


@TestCaseKey=UDB-T32693 @Regression 
Scenario Outline: Verify post ncmcwalletdetails api returns 400 response for Invalid JSON in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\400_ncmcwalletdetails_Invalid_JSON.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_ncmcwalletdetails_Invalid_JSON.json|

@TestCaseKey=UDB-T32692 @Regression 
Scenario Outline: Verify post ncmcwalletdetails api returns 400 response for BLANK request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\400_ncmcwalletdetails_Blank_Body.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_ncmcwalletdetails_Blank_Body.json|


@TestCaseKey=UDB-T32694 @Regression
Scenario Outline: Verify get ncmcwalletdetails api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details    | src\test\resources\testdata\api\request\Drop2\NCMC\405_ncmcwalletdetails.json  |cif,accountNumber         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\405_ncmcwalletdetails.json|


@TestCaseKey=UDB-T32695  @Regression  
Scenario Outline: Verify get ncmcwalletdetails api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |ncmc/wallet/details1    | src\test\resources\testdata\api\request\Drop2\NCMC\404_ncmcwalletdetails.json  |cif,accountNumber         |[0].cif,[0].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\404_ncmcwalletdetails.json|


@TestCaseKey=UDB-T32683 @Regression 
Scenario Outline: Verify post fundtransfer api returns 200 response with Mandatory fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |fund/transfer    |src\test\resources\testdata\api\request\Drop2\NCMC\200_fundtransfer_Mandatory.json         |accountNumber,walletNo         |[0].acctNum,[1].acctNum              |Customer_getCustomerAccounts.json          |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_fundtransfer_Mandatory.json|

@TestCaseKey=UDB-T32682 @Regression 
Scenario Outline: Verify post fundtransfer api returns 200 response with Mandatory and Optional fields in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                            |requestField |responsefield     | filename      |responseBody |
|ncmc     |fund/transfer    |src\test\resources\testdata\api\request\Drop2\NCMC\200_fundtransfer_Mandatory_Optional.json         |accountNumber,walletNo         |[0].acctNum,[1].acctNum              |Customer_getCustomerAccounts.json           |src\test\resources\testdata\api\response\expected\Drop2\NCMC\200_fundtransfer_Mandatory_Optional.json|

 
@TestCaseKey=UDB-T32686 @Regression 
Scenario Outline: Verify post fundtransfer api returns 400 response for Invalid JSON fields in request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400_fundtransfer_Invalid_JSON.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_fundtransfer_Invalid_JSON.json|

@TestCaseKey=UDB-T32685 @Regression
Scenario Outline: Verify post fundtransfer api returns 400 response for BLANK request Body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400_fundtransfer_Blank_Body.json  |null         |null              |null  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_fundtransfer_Blank_Body.json|


@TestCaseKey=UDB-T32687 @Regression 
Scenario Outline: Verify get fundtransfer api returns 405 response for invalid method e.g. Get Request
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\405_fundtransfer.json  |accountNumber,walletNo         |[0].acctNum,[1].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\405_fundtransfer.json|


@TestCaseKey=UDB-T32688 @Regression 
Scenario Outline: Verify get fundtransfer api returns 404 response for invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer1    | src\test\resources\testdata\api\request\Drop2\NCMC\404_fundtransfer.json  |accountNumber,walletNo         |[0].acctNum,[1].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\404_fundtransfer.json|


 
@TestCaseKey=UDB-T99999 @Edge 
Scenario Outline: Verify post fundtransfer api returns 400 response for transferring amount>2000 to Wallet
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 401
Then user verifies json from <responseBody>
	
Examples:
|service  |endpoint            | requestBody                                                                |requestField |responsefield     | filename                     |responseBody |
|ncmc     |fund/transfer    | src\test\resources\testdata\api\request\Drop2\NCMC\400_fundtransfer_MoreThan_2000.json  |accountNumber,walletNo         |[0].acctNum,[1].acctNum              |Customer_getCustomerAccounts.json  |src\test\resources\testdata\api\response\expected\Drop2\NCMC\400_fundtransfer_MoreThan_2000.json|
