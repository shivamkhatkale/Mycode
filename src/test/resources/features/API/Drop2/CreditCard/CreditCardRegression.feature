Feature: Regression of Credit Card API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/CreditCard


@Regression @TestCaseKey=UDB-T30304
Scenario Outline: Verify fetch card api returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|creditcard|getCardProfile|src\test\resources\testdata\api\request\Drop2\CreditCard\FetchCardAPIEmpty.json|null         |null              |  null   |     src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResponseblankbody.json|

@Regression @TestCaseKey=UDB-T30305
Scenario Outline: Verify fetch card api returns status code 200 if request body is having valid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                          |requestField |responsefield     | filename       |responseBody|
|creditcard|getCardProfile|src\test\resources\testdata\api\request\Drop2\CreditCard\FetchCardAPIEmpty.json      |null         |null              |  null         |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResponseInvalidjson.json|

@Regression @TestCaseKey=UDB-T30307
Scenario Outline: Verify fetch card api returns status code 404 not found if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |requestBody                                                                 |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardPro |src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null         |null              |null        |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResposeInvalidendpointURL.json|

@Regression @TestCaseKey=UDB-T30311
Scenario Outline: Verify Set Card Control returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service   |endpoint          |requestBody                                                                         |requestField |responsefield     | filename   |responseBody                                                                              |
|creditcard|ccmsSetCardControl|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCardControlAPIEmpty.json|null         |null              |null        |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetCardControlResponseBlankBody.json|

@Regression @TestCaseKey=UDB-T30312
Scenario Outline: Verify Set Card Control returns status code 400 if request body is having invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                                      | requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSetCardControl|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCardControlInvalidJson.json| null         |null              |null         |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetCardControlResponseInvalidJson.json|

@Regression @TestCaseKey=UDB-T30314
Scenario Outline: Verify Set Card Control returns status code 404 not found if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         |requestBody                                                                 |requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSetCardCont|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCardControl.json|null         |null               |null       |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetCardControlResponseInvalidEndpointURL.json|


@Regression @TestCaseKey=UDB-T30332
Scenario Outline: Verify Set CC PIN returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                |requestField |responsefield     | filename |responseBody|
|creditcard|ccmsSetPin|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCCPINEmpty.json|null         |null              |null      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINResponseBlankBody.json|

@Regression @TestCaseKey=UDB-T30333
Scenario Outline: Verify Set CC PIN returns status code 400 if request body is having invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                      |requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSetPin|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCCPINInvalidJson.json|null         |null              | null      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINResponseINvalidJson.json|

@Regression @TestCaseKey=UDB-T30335
Scenario Outline: Verify Set CC PIN returns status code 404 not found if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                           |requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSet123|src\test\resources\testdata\api\request\Drop2\CreditCard\SetccPIN.json|null         |null               |null       |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINResponseInvalidEndpontURL.json|

 @Regression @TestCaseKey=UDB-T30318
Scenario Outline: Verify Pay Outstanding Bill returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                                   |requestField |responsefield     | filename  |responseBody|
|creditcard|get-outstandingBill|src\test\resources\testdata\api\request\Drop2\CreditCard\PayOutstandingBillEmpty.json|null         |null              |  null     |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\PayOutstandingBillResponseBlankBody.json|

@Regression @TestCaseKey=UDB-T30319
Scenario Outline: Verify Pay Outstanding Bill returns status code 400 if request body is having invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint             |requestBody                                                                                |requestField |responsefield     | filename   |responseBody|
|creditcard|get-outstandingBill|src\test\resources\testdata\api\request\Drop2\CreditCard\PayOutstandingBillInvalidJson.json|null         |  null            |null        |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\PayOutstandingBillResponseInvalidJson.json|

@Regression @TestCaseKey=UDB-T30321
Scenario Outline: Verify Pay Outstanding Bill returns status code 200 found if we pass valid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                      |requestField |responsefield     | filename  |responseBody|
|creditcard|get-outstandingBill|src\test\resources\testdata\api\request\Drop2\CreditCard\CCBillPayment.json|null         | null             | null      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\E2EOutstandingBillResponce.json.json|

@Regression @TestCaseKey=UDB-T30325
Scenario Outline: Verify Transaction Details returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                           |requestField |responsefield     | filename  |responseBody|
|creditcard|txnDetails|src\test\resources\testdata\api\request\Drop2\CreditCard\TransactionDetailsEmpty.json|null           |null             |null        |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TransactionDetailsResponseBlankBody.json|

@Regression @TestCaseKey=UDB-T30326
Scenario Outline: Verify Transaction Details returns status code 400 if request body is having invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint    |requestBody                                                                                  |requestField |responsefield     | filename  |responseBody|
|creditcard|txnDetails|src\test\resources\testdata\api\request\Drop2\CreditCard\TransactionDetailsInvalidJson.json  |null         |   null           |  null     |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TransactionDetailsResponseInvalidJson.json|

@Regression @TestCaseKey=UDB-T30328
Scenario Outline: Verify Transaction Details returns status code 404 not found if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
	
Examples:
| service    | endpoint | requestBody                                                                      | requestField | responsefield | filename | responseBody                                                                                                         |
| creditcard | txnDet   | src\test\resources\testdata\api\request\Drop2\CreditCard\TransactionDetails.json | null         | null          | null     | src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TransactionDetailsResponseInvalidEndpointURL.json |

@Regression @TestCaseKey=UDB-T30339
Scenario Outline: Verify Temporary Block and Unblock API returns status code 400 if request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody                                                                                      |requestField |responsefield     | filename  |responseBody|
|creditcard|tempBlockUnblock|src\test\resources\testdata\api\request\Drop2\CreditCard\TemporaryBlockUnblockAPIEmpty.json|null         | null             | null      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TemporaryBlockResponseBlankBody.json|

@Regression @TestCaseKey=UDB-T30340
Scenario Outline: Verify Temporary Block and Unblock API returns status code 400 if request body is having invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |requestBody                                                                                           |requestField |responsefield     | filename  |responseBody|
|creditcard|tempBlockUnblock|src/test/resources/testdata/api/request/Drop2/CreditCard/TemporaryBlockUnblockInvalidJson.json|null         |null              | null      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TemporaryBlockResponseInvalidJson.json|

@Regression @TestCaseKey=UDB-T30342
Scenario Outline: Verify Temporary Block and Unblock API returns status code 404 not found if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody                                                                 |requestField |responsefield     | filename  |responseBody|
|creditcard|tempBlock. |src\test\resources\testdata\api\request\Drop2\CreditCard\TemporaryBlock.json|null          |null               | null     | src/test/resources/testdata/api/response/expected/Drop2/CreditCard/TemporaryBlockResponseInvalidEndpointURL.json|


@Regression @TestCaseKey=UDB-T30306
Scenario Outline: Verify Fetch Card Profile API returns status code 200 if we pass valid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user sends get request for Credit Card features <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service |endpoint        |requestBody                                                                 |requestField |responsefield   | filename    |responseBody|
|creditcard|getCardProfile|src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null         |null            |null         |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResponseInvalidMethod.json|

@Regression @TestCaseKey=UDB-T30313
Scenario Outline: Verify Set Card Control API returns status code 405 if we pass invalid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody                                                                         |requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSetCardControl|src\test\resources\testdata\api\request\Drop2\CreditCard\SetCardControl.json|null          |null             |null       |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetCardControlResponseInvalidMethod.json|

@Regression @TestCaseKey=UDB-T30320
Scenario Outline: Verify Pay Outstanding Bill API returns status code 405 if we pass invalid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user sends get request for Credit Card features <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint              |requestBody                                                               |requestField |responsefield     | filename | responseBody|
|creditcard|get-outstandingBill|src\test\resources\testdata\api\request\Drop2\CreditCard\CCBillPayment.json|null         |null               |null     | src\test\resources\testdata\api\response\expected\Drop2\CreditCard\PayOutstandingBillResponseInvalidMethod.json|

@Regression @TestCaseKey=UDB-T30327
Scenario Outline: Verify Transaction Details API returns status code 405 if we pass invalid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody |requestField |responsefield     | filename | responseBody|
|creditcard|txnDetails|src\test\resources\testdata\api\request\Drop2\CreditCard\TransactionDetails.json|null |null|null |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TransactionDetailsResponseInvalidMethod.json|

@Regression @TestCaseKey=UDB-T30334
Scenario Outline: Verify Set Credit Card PIN API returns status code 405 if we pass invalid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody                                                             |requestField |responsefield     | filename  |responseBody|
|creditcard|ccmsSetPin|src\test\resources\testdata\api\request\Drop2\CreditCard\SetccPIN.json  |null         |  null            |   null    |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINResponseInvalidMethod.json|

@Regression @TestCaseKey=UDB-T30341
Scenario Outline: Verify Temporary Block and Unblock Credit Card API returns status code 405 if we pass invalid Method - GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>
Examples:
|service |endpoint    |requestBody                                                                       |requestField |responsefield     | filename | responseBody|
|creditcard|tempBlockUnblock|src\test\resources\testdata\api\request\Drop2\CreditCard\TemporaryBlock.json|null         |null              |null      | src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TemporaryBlockResponseInvalidMethod.json|




@E2E @TestCaseKey=UDB-T35844
Scenario Outline: Verify that "get-outstandingBill"  is generated  for the "Active" cardStatus.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                                       |requestField           |responsefield    | filename|responseBody|
|creditcard|get-outstandingBill|src/test/resources/testdata/api/request/Drop2/CreditCard/E2E_get-outstandingBill_200.json|null                   |null             |  null   |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/E2EOutstandingBillResponce.json|


@E2E @TestCaseKey=UDB-T35845
Scenario Outline: Verify that "get-outstandingBill"  is generated  for the "INACTIVE" cardStatus.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                                            |requestField           |responsefield    | filename|responseBody|
|creditcard|get-outstandingBill|src/test/resources/testdata/api/request/Drop2/CreditCard/E2E_get-outstandingBill_Inactive.json|null                   |null             |  null   |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/E2EOutstandingBillResponce.json|


@E2E @TestCaseKey=UDB-T35846
Scenario Outline: Verify that "TransactionLimit" Statement is generated for "Set Card Control" API "POST" Method for Status code 200 with the given Active Card status.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField           |responsefield    | filename|responseBody|
|creditcard|ccmsSetCardControl|src/test/resources/testdata/api/request/Drop2/CreditCard/SetCardControl.json|null                   |null             |  null   |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/SetCardControlresponse.json|

@E2E @TestCaseKey=UDB-T35849
Scenario Outline: Verify that "Fetch Card Profile" API post method returns correct response for valid "Cif".
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>

Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:
|service |endpoint    |requestBody  |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardProfile| src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResponse.json|


@E2E @TestCaseKey=UDB-T35848
Scenario Outline: Verify that "Set credit card pin" Api post method return correct response for valid "Account ID".
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:  
|service   |endpoint    |requestBody                                                              |requestField     |responsefield| filename        |responseBody|
|creditcard|ccmsSetPin  | src\test\resources\testdata\api\request\Drop2\CreditCard\SetccPIN.json  |null             |       null  |null             |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINresponse.json|


@E2E @TestCaseKey=UDB-T30336
Scenario Outline: Verify that "Temporary Block and Unblock" api can change the status of card to Temporary Block and Unblock.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:
|service   |endpoint        |requestBody                                                                  |requestField         |responsefield         | filename             |responseBody|
|creditcard|tempBlockUnblock| src\test\resources\testdata\api\request\Drop2\CreditCard\TemporaryBlock.json|null                 | null                  |null   |\src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TemporaryBlockresponse.json|


@EgdeCases @TestCaseKey=UDB-T35844
Scenario Outline: Verify "Set Card Control" API "POST" Method for Status code 400 Request body is blank.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint             |requestBody                                                                         |requestField           |responsefield    | filename|responseBody|
|creditcard|ccmsSetCardControl|src/test/resources/testdata/api/request/Drop2/CreditCard/SetCardControlAPIEmpty.json|null                   |null             |  null   |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/SetCardControlResponseBlankBody.json|




@EgdeCases @TestCaseKey=UDB-T35840
Scenario Outline: Verify that "ccmsSetPin" API returns an error message upon  Method for Status code 400 setting green-pin after temporary block card.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service   |endpoint    |requestBody                                                                         |requestField                     |responsefield                     | filename              |responseBody|
|creditcard|ccmsSetPin  | src/test/resources/testdata/api/request/Drop2/CreditCard/SetPINInvalideFormate.json      |null                                          |null                                           |null   |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINresponse.json|


@EgdeCases @TestCaseKey=UDB-T35842
Scenario Outline: Verify that "Set credit card pin" API post method returns an error message "ccPin expected maxLength 4, actual 6" upon entering more than 4 digit pin
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service   |endpoint    |requestBody                                                                         |requestField    |responsefield     | filename        |responseBody|
|creditcard|ccmsSetPin  |src/test/resources/testdata/api/request/Drop2/CreditCard/SetCCPINLarge.json         |null            |null              |null             |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/SetccPINLarge.json|

@EgdeCases @TestCaseKey=UDB-T35843
Scenario Outline: Verify that "Set credit card pin" API post method returns an error message "ccPin string [asdf] does not match pattern \\d{4}" when entering more alphabetical character.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service   |endpoint    |requestBody                                                                         |requestField    |responsefield     | filename        |responseBody|
|creditcard|ccmsSetPin  |src/test/resources/testdata/api/request/Drop2/CreditCard/SetPINInvalideFormate.json |null            |null              |null             |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/SetPINInvalideFormateResponce.json|

#500
@EgdeCases @TestCaseKey=UDB-T35843
Scenario Outline: Verify that "SetCardControl" API returns an error message "INTERNAL_SERVER_ERROR" upon updating transcation  limit with negative value.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service   |endpoint            |requestBody                                                                                |requestField    |responsefield     | filename        |responseBody|
|creditcard|ccmsSetCardControl  |src/test/resources/testdata/api/request/Drop2/CreditCard/SetCardControl_Nigativevalue.json |null            |null              |null             |src/test/resources/testdata/api/response/expected/Drop2/CreditCard/SetCardControlNegativevalueResponce.json|



@TestDataScenario @TestCaseKey=UDB-T35865
Scenario Outline: Verify "Fetch Card Profile" API "POST" Method for Card Varient Visa platinum.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
 Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	Examples:
|service |endpoint    |requestBody  |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardProfile| src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfile.json|
	
	
@TestDataScenario @TestCaseKey=UDB-T35864
Scenario Outline: Verify "Fetch Card Profile" API "POST" Method for Card Varient Visa platinum business.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	Examples:
|service |endpoint    |requestBody  |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardProfile| src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null|null|null|src\test\resources\testdata\api\response\expected\Drop2\CreditCard\getCardProfileResponse.json|
	
	
	@TestDataScenario @TestCaseKey=UDB-T35863
Scenario Outline: Verify "Fetch Card Profile" API "POST" Method for Card Varient Visa signature.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user sends post request for Credit Card features <requestBody>
Then user triggers a post request with <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	Examples:
|service |endpoint    |requestBody  |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardProfile| src\test\resources\testdata\api\request\Drop2\CreditCard\getCardProfile.json|null|null|null|src/test/resources/testdata/api/response/expected/Drop2/CreditCard/getCardProfile.json|
	