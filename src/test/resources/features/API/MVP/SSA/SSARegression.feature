Feature: Regression for SSA
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/ssa


@TestCaseKey=UDB-T34272 @E2E
Scenario Outline: Verify the details of customer - Saving Acc using of getCustomerAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>	
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|customer|/getCustomerAccounts|\src\test\resources\testdata\api\request\mvp\ssa\getCustomerAccountsSaving.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\getCustomerAccountsSaving.json|



@TestCaseKey=UDB-T34272 @E2E
Scenario Outline: Verify that API allows user to save the created SSA account using details of Saving Account 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody  |requestField |responsefield    |filename  |responseBody|												
|ssa|/saveSsa|\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSASavingAcc.json |cif,source.acctNum,customer.cif |[1].cif,[23].acctNum,[1].cif |getCustomerAccountsSaving.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSASavingAcc.json|

@TestCaseKey=UDB-T34272 @E2E
Scenario Outline: Verify that API allows user to open SSA account using details of Saving Account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint   | requestBody 																											|requestField       |responsefield              |filename     |responseBody  |
|ssa        |/openSsa   |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSA.json  |applNum            |applicationFrmNum         |SSA_saveSSASavingAcc.json  |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSA.json|

@TestCaseKey=UDB-T34277 @E2E
Scenario Outline: Verify the details of customer - Current Acc using of getCustomerAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|customer|/getCustomerAccounts|\src\test\resources\testdata\api\request\mvp\ssa\getCustomerAccountsCurrent.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\getCustomerAccountsCurrent.json|

@TestCaseKey=UDB-T34277 @E2E
Scenario Outline: Verify that API allows user to save the created SSA account using details of Current Account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody  |requestField |responsefield    |filename  |responseBody|												
|ssa|/saveSsa|\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSACurrentAcc.json |cif,source.acctNum,customer.cif |[1].cif,[2].acctNum,[1].cif |getCustomerAccountsCurrent.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSACurrentAcc.json|

@TestCaseKey=UDB-T34277 @E2E
Scenario Outline: Verify that API allows user to open SSA account using details of Current Account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint   | requestBody 																											|requestField       |responsefield              |filename     |responseBody  |
|ssa        |/openSsa   |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSA.json  |applNum            |applicationFrmNum         |SSA_saveSSACurrentAcc.json  |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSA.json|



@TestCaseKey=UDB-T34281 @Edge
Scenario Outline: Verify the API is not allowing user to make contribution below Rs 250/-
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_Contribution249AmtEdge.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_Contribution249AmtEdge.json|

@TestCaseKey=UDB-T34282,UDB-T34285 @Edge 
Scenario Outline: Verify the API is allowing user to make contribution of Rs 250/- 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contribution250AmtEdge.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contribution250AmtEdge.json|


@TestCaseKey=UDB-T34284 @Edge
Scenario Outline: Verify  the API is not allowing user to make contribution above Rs 150000/-in FY.
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_Contribution150001AmtEdge.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_Contribution150001AmtEdge.json|


@TestCaseKey=UDB-T34286 @Edge
Scenario Outline: Verify the API is not allowing user to make contribution when its not in multiple of Rs50/-
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_Contributionnot50multiple.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_Contributionnot50multiple.json|


@TestCaseKey=UDB-T34287 @Edge
Scenario Outline: Verify the API is not allowing user to fetch statement when the Start Date is passed as future date and End Date as past date
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSATransactions|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getTransactionEdge.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getTransactionEdge.json|


@TestCaseKey=UDB-T10420
Scenario Outline: Verify user existing ssa account in gbm
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingssa.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexisting.json|


@TestCaseKey=UDB-T10420 @Regression
Scenario Outline: Verify the user fetch for two existing ssa account in gbm using checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingssa2.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexisting2.json|



@TestCaseKey=UDB-T10427 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingssa2.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexisting405.json|


@TestCaseKey=UDB-T10426 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexistingInvalidReqpayload.json|


@TestCaseKey=UDB-T10421 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistinginputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexistinginputvalueblank.json|


@TestCaseKey=UDB-T10424 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistinginvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexistinginvaliddata.json|


@TestCaseKey=UDB-T10425 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of checkexisting API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistinginvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexistinginvalidkey.json|


@TestCaseKey=UDB-T10474 @Regression
Scenario Outline: Verify the user fetch the list of created SSA application using getInvestmentAccounts API on Account-Investment tab
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getInvestmentAccounts.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getInvestmentAccounts.json|



@TestCaseKey=UDB-T10481 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getInvestmentAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts|\src\test\resources\testdata\api\request\mvp\ssa\SSA_investmentaccounts405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_investmentaccounts405.json|


@TestCaseKey=UDB-T10480 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of getInvestmentAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_investmentaccountsInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_investmentaccountsInvalidReqpayload.json|

@TestCaseKey=UDB-T10475 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of getInvestmentAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_investmentaccountsinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_investmentaccountsinputvalueblank.json|

@TestCaseKey=UDB-T10478 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of getInvestmentAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_investmentaccountsinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_investmentaccountsinvaliddata.json|

@TestCaseKey=UDB-T10479 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of getInvestmentAccounts API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_investmentaccountsinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_investmentaccountsinvalidkey.json|

@TestCaseKey=UDB-T31343 @Regression
Scenario Outline: Verify the user search for preferred branch for ssa 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|\src\test\resources\testdata\api\request\mvp\ssa\SSA_findbranch.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_findbranch.json|



@TestCaseKey=UDB-T31996 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of findbranch API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|src\test\resources\testdata\api\request\mvp\ssa\SSA_preferredbranchaddress405.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_preferredbranchaddress405.json|


@TestCaseKey=UDB-T31995 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of findbranch API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|src\test\resources\testdata\api\request\mvp\ssa\SSA_preferredbranchaddressInvalidReqpayload.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_preferredbranchaddressInvalidReqpayload.json|


@TestCaseKey=UDB-T31992 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of findbranch API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|src\test\resources\testdata\api\request\mvp\ssa\SSA_preferredbranchaddressinputvalueblank.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_preferredbranchaddressinputvalueblank.json|


@TestCaseKey=UDB-T31993 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of findbranch API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|src\test\resources\testdata\api\request\mvp\ssa\SSA_preferredbranchaddressinvaliddata.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_preferredbranchaddressinvaliddata.json|

@TestCaseKey=UDB-T31994 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of findbranch API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|src\test\resources\testdata\api\request\mvp\ssa\SSA_preferredbranchaddressinvalidkey.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_preferredbranchaddressinvalidkey.json|


@TestCaseKey=UDB-T10471 @Regression
Scenario Outline: Verify Birthtype dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/birth_type|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getBirthtype.json.json|


@TestCaseKey=UDB-T32997 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of birthtype API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/birth_type|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_birthtype405.json|


@TestCaseKey=UDB-T31341 @Regression
Scenario Outline: Verify Birthorder dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/birth_order|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getBirthorder.json.json|

@TestCaseKey=UDB-T32998 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of birthorder API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/birth_order|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_birthorder405.json|


@TestCaseKey=UDB-T10473 @Regression
Scenario Outline: Verify Relationship dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/SSY_RELATION_WITH_MINOR|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getRelationship.json|

@TestCaseKey=UDB-T32999 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of relationship API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint                        |responseBody|
|refmaster|/SSY_RELATION_WITH_MINOR|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_relationship405.json|


@TestCaseKey=UDB-T10430 @Regression
Scenario Outline: Verify the deatils of drop-off SSA application
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResume.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResume.json|

@TestCaseKey=UDB-T10437 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getResume API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResume405.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResume405.json|


@TestCaseKey=UDB-T10436 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of getResume API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResumeInvalidReqpayload.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResumeInvalidReqpayload.json|


@TestCaseKey=UDB-T10431 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of getResume API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResumeinputvalueblank.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResumeinputvalueblank.json|


@TestCaseKey=UDB-T10434 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of getResume API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResumeinvaliddata.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResumeinvaliddata.json|

@TestCaseKey=UDB-T10435 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of getResume API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResumeinvalidkey.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResumeinvalidkey.json|

@TestCaseKey=UDB-T10399 @Regression
Scenario Outline: Verify the user get the account details of SSA
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetails|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetails|


@TestCaseKey=UDB-T10407 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getSSAAccountDetails API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetails405.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetails405.json|


@TestCaseKey=UDB-T10406 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of getSSAAccountDetails API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetailsInvalidReqpayload.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetailsInvalidReqpayload.json|


@TestCaseKey=UDB-T10400 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of getSSAAccountDetails API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetailsinputvalueblank.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetailsinputvalueblank.json|


@TestCaseKey=UDB-T10404 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of getSSAAccountDetails API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetailsinvaliddata.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetailsinvaliddata.json|

@TestCaseKey=UDB-T10405 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of getSSAAccountDetails API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetailsinvalidkey.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetailsinvalidkey.json|


@TestCaseKey=UDB-T10440 @Regression
Scenario Outline: Verify the user is able to save the created SSA account details
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody  |requestField |responsefield     | filename  |responseBody|
|ssa|/saveSsa|\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSA.json | null | null | null |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSA.json|


@TestCaseKey=UDB-T10447 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of saveSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/saveSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSA405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSA405.json|


@TestCaseKey=UDB-T10446 @Regression
Scenario Outline: Verify the user pass incorrect request payload of saveSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/saveSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSAInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSAInvalidReqpayload.json|


@TestCaseKey=UDB-T10441 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of saveSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/saveSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSAinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSAinputvalueblank.json|


@TestCaseKey=UDB-T10444 @Regression 
Scenario Outline: Verify the user pass value incorrect in request payload of saveSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/saveSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSAinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSAinvaliddata.json|

@TestCaseKey=UDB-T10445 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of saveSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/saveSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSAinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSAinvalidkey.json|

@TestCaseKey=UDB-T10450 @Regression
Scenario Outline: Verify the user is able to open the SSA account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service    |endpoint   | requestBody 																											|requestField       |responsefield              | filename     |responseBody  |
|ssa        |/openSsa   |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSA.json  |applNum            | applicationFrmNum         | SSA_saveSSA.json  |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSAresp.json|


@TestCaseKey=UDB-T10457 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of openSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/openSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSA405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSA405.json|


@TestCaseKey=UDB-T10456 @Regression
Scenario Outline: Verify the user pass incorrect request payload of openSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/openSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSAInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSAInvalidReqpayload.json|


@TestCaseKey=UDB-T10451 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of openSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/openSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSAinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSAinputvalueblank.json|


@TestCaseKey=UDB-T10454 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of openSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/openSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSAinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSAinvaliddata.json|


@TestCaseKey=UDB-T10455 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of openSSA API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/openSsa |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSAinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSAinvalidkey.json|


@TestCaseKey=UDB-T10410 @Regression
Scenario Outline: Verify the status of created SSA Application
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAStatus|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getStatus.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getStatus.json|


@TestCaseKey=UDB-T10417 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getSSAStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAStatus|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAStatus405.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAStatus405.json|

@TestCaseKey=UDB-T10416 @Regression
Scenario Outline: Verify the user pass incorrect request payload of getSSAStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSAStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAStatusInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAStatusInvalidReqpayload.json|

@TestCaseKey=UDB-T10411 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of getSSAStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSAStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAStatusinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAStatusinputvalueblank.json|




@TestCaseKey=UDB-T10414 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of getSSAStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSAStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAStatusinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAStatusinvaliddata.json|


@TestCaseKey=UDB-T10415 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of getSSAStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSAStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAStatusinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAStatusinvalidkey.json|


@TestCaseKey=UDB-T31280 @Regression
Scenario Outline: Verify the user is able to upload the documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service|endpoint|requestBody|requestField|responsefield|filename|responseBody|
|ssa|/upload|src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadBirthCertificate.json|null|null|null|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadBirthCertificate.json|


@TestCaseKey=UDB-T31287 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of upload API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service|endpoint|requestBody|responseBody|
|ssa|/upload|\src\test\resources\testdata\api\request\mvp\ssa\SSA_upload405.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_upload405.json|



@TestCaseKey=UDB-T10286 @Regression
Scenario Outline: Verify the user pass incorrect request payload of upload API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/upload|\src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadInvalidReqpayload.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadInvalidReqpayload.json|



@TestCaseKey=UDB-T31281 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of upload API 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service|endpoint|requestBody|responseBody|
|ssa|/upload|\src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadinputvalueblank.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadinputvalueblank.json|



@TestCaseKey=UDB-T31284 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of upload API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/upload |\src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadinvaliddata.json|

@TestCaseKey=UDB-T31285 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of upload API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/upload |\src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadinvalidkey.json|


@TestCaseKey=UDB-T31290 @Regression
Scenario Outline: Verify the user is able to download the documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service    |endpoint          | requestBody                                                                 |requestField            |responsefield              | filename                    |responseBody| 
|ssa|/download|\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadBirthCertificate.json             |uri                    | documents.uri             |SSA_uploadBirthCertificate.json    |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadBirthCertificate.json|




@TestCaseKey=UDB-T31297 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of download API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/download |\src\test\resources\testdata\api\request\mvp\ssa\SSA_download405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_download405.json|



@TestCaseKey=UDB-T31296 @Regression
Scenario Outline: Verify the user pass incorrect request payload of download API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/download |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadInvalidReqpayload.json|


@TestCaseKey=UDB-T31291 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of download API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/download |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadinputvalueblank.json|


@TestCaseKey=UDB-T31294 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of download API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/download |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadinvaliddata.json|

@TestCaseKey=UDB-T31295 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of download API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/download |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadinvalidkey.json|



@TestCaseKey=UDB-T31300 @Regression
Scenario Outline: Verify the user delete the uploaded documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/removedoc|\src\test\resources\testdata\api\request\mvp\ssa\SSA_removeBirthCertificate.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removeBirthCertificate.json|


@TestCaseKey=UDB-T31307 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of removedoc API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/removedoc |\src\test\resources\testdata\api\request\mvp\ssa\SSA_removedoc405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removedoc405.json|



@TestCaseKey=UDB-T31306 @Regression
Scenario Outline: Verify the user pass incorrect request payload of removedoc API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/removedoc |\src\test\resources\testdata\api\request\mvp\ssa\SSA_removedocInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removedocInvalidReqpayload.json|


@TestCaseKey=UDB-T31301 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of removedoc API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/removedoc |\src\test\resources\testdata\api\request\mvp\ssa\SSA_removedocinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removedocinputvalueblank.json|

 
@TestCaseKey=UDB-T31304 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of removedoc API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/removedoc |\src\test\resources\testdata\api\request\mvp\ssa\SSA_removedocinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removedocinvaliddata.json|

@TestCaseKey=UDB-T31305 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of removedoc API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/removedoc |\src\test\resources\testdata\api\request\mvp\ssa\SSA_removedocinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removedocinvalidkey.json|


@TestCaseKey=UDB-T10389 @Regression
Scenario Outline: Verify the user is able to download the Acknowledgment Letter
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/AcknowledgementLetter|\src\test\resources\testdata\api\request\mvp\ssa\SSA_acknowledgementLetter.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_acknowledgementLetter.json|


@TestCaseKey=UDB-T10396 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of AcknowledgementLetter API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/AcknowledgementLetter |\src\test\resources\testdata\api\request\mvp\ssa\SSA_AcknowledgementLetter405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_AcknowledgementLetter405.json|


@TestCaseKey=UDB-T10395 @Regression
Scenario Outline: Verify the user pass incorrect request payload of AcknowledgementLetter API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/AcknowledgementLetter |\src\test\resources\testdata\api\request\mvp\ssa\SSA_AcknowledgementLetterInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_AcknowledgementLetterInvalidReqpayload.json|


@TestCaseKey=UDB-T10390 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of AcknowledgementLetter API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/AcknowledgementLetter |\src\test\resources\testdata\api\request\mvp\ssa\SSA_AcknowledgementLetterinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_AcknowledgementLetterinputvalueblank.json|


@TestCaseKey=UDB-T10393 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of AcknowledgementLetter API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/AcknowledgementLetter |\src\test\resources\testdata\api\request\mvp\ssa\SSA_AcknowledgementLetterinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_AcknowledgementLetterinvaliddata.json|

@TestCaseKey=UDB-T10394 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of AcknowledgementLetter API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/AcknowledgementLetter |\src\test\resources\testdata\api\request\mvp\ssa\SSA_AcknowledgementLetterinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_AcknowledgementLetterinvalidkey.json|


@TestCaseKey=UDB-T10357 @Regression
Scenario Outline: Verify the user is able to send statement on email
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/emailStatement|\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatement.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatement.json|


@TestCaseKey=UDB-T10364 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of emailStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/emailStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatement405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatement405.json|


@TestCaseKey=UDB-T10363 @Regression
Scenario Outline: Verify the user pass incorrect request payload of emailStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/emailStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatementInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatementInvalidReqpayload.json|


@TestCaseKey=UDB-T10358 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of emailStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/emailStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatementinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatementinputvalueblank.json|


@TestCaseKey=UDB-T10361 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of emailStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/emailStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatementinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatementnvaliddata.json|

@TestCaseKey=UDB-T10362 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of emailStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/emailStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatementinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatementinvalidkey.json|



@TestCaseKey=UDB-T10367 @Regression
Scenario Outline: Verify the user is able to download the statement
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Thn user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/downloadStatement|\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatement.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatement.json|


@TestCaseKey=UDB-T10374 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of downloadStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatement405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatement405.json|


@TestCaseKey=UDB-T10373 @Regression
Scenario Outline: Verify the user pass incorrect request payload of downloadStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatementInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatementInvalidReqpayload.json|


@TestCaseKey=UDB-T10368 @Regression
Scenario Outline: Verify the user pass value as blank in request payload of downloadStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatementinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatementinputvalueblank.json|


@TestCaseKey=UDB-T10371 @Regression
Scenario Outline: Verify the user pass value incorrect in request payload of downloadStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatementinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatementnvaliddata.json|

@TestCaseKey=UDB-T10372 @Regression
Scenario Outline: Verify the user pass incorrect key in request payload of downloadStatement API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatementinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatementinvalidkey.json|


@TestCaseKey=UDB-T10460 @Regression
Scenario Outline: Verify the user make the contribution on SSA Account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint       |requestBody                                                             |requestField          |responsefield     | filename  |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contribution.json  | null                 |  null            | null      |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contribution.json|


@TestCaseKey=UDB-T10467 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of contribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/contribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contribution405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contribution405.json|


@TestCaseKey=UDB-T10466 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of contribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/contribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contributionInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contributionInvalidReqpayload.json|


@TestCaseKey=UDB-T10461 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of contribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/contribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contributioninputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contributioninputvalueblank.json|


@TestCaseKey=UDB-T10464 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of contribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/contribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contributioninvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contributioninvaliddata.json|


@TestCaseKey=UDB-T10465 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of contribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/contribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contributioninvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contributioninvalidkey.json|



@TestCaseKey=UDB-T10645 @Regression
Scenario Outline: Verify the user validate the amount contribution on SSA
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/validateContribution|\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContribution.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContribution.json|



@TestCaseKey=UDB-T10652 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of validateContribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/validateContribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContribution405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContribution405.json|


@TestCaseKey=UDB-T10651 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of validateContribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/validateContribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContributionInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContributionInvalidReqpayload.json|


@TestCaseKey=UDB-T10646 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of validateContribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/validateContribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContributioninputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContributioninputvalueblank.json|


@TestCaseKey=UDB-T10649 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of validateContribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/validateContribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContributioninvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContributioninvaliddata.json|


@TestCaseKey=UDB-T10650 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of validateContribution API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/validateContribution |\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContributioninvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContributioninvalidkey.json|


@TestCaseKey=UDB-T10484 @Regression
Scenario Outline: Verify the user fetch the Payment status of SSA account contribution
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service    |endpoint          | requestBody                                                                 |requestField            |responsefield              | filename                    |responseBody| 
|ssa        |/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatus.json   |investmentContribution.channelTxnId            | investmentContribution.channelTxnId              | SSA_contribution.json       |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatus.json|


@TestCaseKey=UDB-T10491 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getPaymentStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatus405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatus405.json|


@TestCaseKey=UDB-T10490 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of getPaymentStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatusInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatusInvalidReqpayload.json|


@TestCaseKey=UDB-T10485 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of getPaymentStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatusinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatusinputvalueblank.json|


@TestCaseKey=UDB-T10488 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of getPaymentStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatusinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatusinvaliddata.json|

@TestCaseKey=UDB-T10489 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of getPaymentStatus API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatusinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatusinvalidkey.json|


@TestCaseKey=UDB-T10347 @Regression
Scenario Outline: Verify the user fetch the transactions statement of SSA account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSATransactions|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getTransaction.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getTransaction.json|


@TestCaseKey=UDB-T10354 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of getSSATransactions API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATransactions |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSATransactions405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSATransactions405.json|


@TestCaseKey=UDB-T10353 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of getSSATransactions API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATransactions |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSATransactionsInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSATransactionsInvalidReqpayload.json|


@TestCaseKey=UDB-T10348 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of getSSATransactions API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATransactions |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSATransactionsinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSATransactionsinputvalueblank.json|


@TestCaseKey=UDB-T10351 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of getSSATransactions API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATransactions |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSATransactionsinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSATransactionsinvaliddata.json|

@TestCaseKey=UDB-T10352 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of getSSATransactions API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATransactions |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSATransactionsinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSATransactionsinvalidkey.json|



@TestCaseKey=UDB-T31330 @Regression
Scenario Outline: Verify the user generate the CRM lead on click of events(Closure/Partial Withdrawal/Transfer Branch)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/createLead|\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLead.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLead.json|


@TestCaseKey=UDB-T31337 @Regression
Scenario Outline: Verify the status code when the method is passed incorrect of createLead API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/createLead |\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLead405.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLead405.json|


@TestCaseKey=UDB-T31336 @Regression
Scenario Outline: Verify the status code when the request payload is passed incorrect of createLead API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/createLead |\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLeadInvalidReqpayload.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLeadInvalidReqpayload.json|


@TestCaseKey=UDB-T31331 @Regression
Scenario Outline: Verify the status code when the value is passed as blank of createLead API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/createLead |\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLeadinputvalueblank.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLeadinputvalueblank.json|


@TestCaseKey=UDB-T31334 @Regression
Scenario Outline: Verify the status code when the value is passed as invalid of createLead API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/createLead |\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLeadinvaliddata.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLeadinvaliddata.json|


@TestCaseKey=UDB-T31335 @Regression
Scenario Outline: Verify the status code when the key is passed as invalid of createLead API
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/createLead |\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLeadinvalidkey.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLeadinvalidkey.json|


