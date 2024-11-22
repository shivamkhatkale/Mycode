Feature: Smoke of Credit Card
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/CreditCard



@TestCaseKey=UDB-T30301
Scenario Outline: Verify fetch card api returns credit card details
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|creditcard|getCardProfile| src/test/resources/testdata/api/request/Drop2/CreditCard/getCardProfile.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop2/CreditCard/getCardProfileResponse.json|


@TestCaseKey=UDB-T30329
Scenario Outline: Verify Set CC PIN sets the Credit card PIN
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:  
|service   |endpoint    |requestBody                                                              |requestField                     |responsefield                     | filename             |responseBody|
|creditcard|ccmsSetPin  | src\test\resources\testdata\api\request\Drop2\CreditCard\SetccPIN.json  |cardAmId,ccAccountId             |cardAmId,ccAccountId              |getCardProfile.json   |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetccPINresponse.json|

@TestCaseKey=UDB-T30308
Scenario Outline: Verify Set Card Control sets Channel Limits for the credit card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:
|service |endpoint    |requestBody  |requestField                                                            |responsefield     | filename     |responseBody          |
|creditcard| ccmsSetCardControl| src\test\resources\testdata\api\request\Drop2\CreditCard\SetCardControl.json|ccAccountId         |ccAccountId   |getCardProfile.json |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\SetCardControlresponse.json|


@TestCaseKey=UDB-T30322
Scenario Outline: Verify Customer views his Recent, Pending and Unbilled Transactions of Credit Card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:   
|service |endpoint    |requestBody                                                                      | requestField  |responsefield     | filename                 |responseBody|
|creditcard|txnDetails| src\test\resources\testdata\api\request\Drop2\CreditCard\TransactionDetails.json|ccAccountId    |ccAccountId       | getCardProfile.json      |src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TransactionDetailsresponse.json|

@TestCaseKey=UDB-T30336
Scenario Outline: Verify Customer blocks his Credit Card Temporarily
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody |requestField |responsefield     | filename  |responseBody|
|creditcard|tempBlockUnblock| src\test\resources\testdata\api\request\Drop2\CreditCard\TemporaryBlock.json|null| null|null|\src\test\resources\testdata\api\response\expected\Drop2\CreditCard\TemporaryBlockresponse.json|

@TestCaseKey=UDB-T30336
Scenario Outline: Verify Customer Unblocks his Credit Card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


	
Examples:
|service |endpoint    |requestBody |requestField |responsefield     | filename  |responseBody|
|creditcard|tempBlockUnblock| src\test\resources\testdata\api\request\Drop2\CreditCard\UnblockCreditCard.json|null|null|null| src\test\resources\testdata\api\response\expected\Drop2\CreditCard\UnblockCreditCardresponse.json|

@TestCaseKey=UDB-T30315
Scenario Outline: Verify Customer pays his Credit card Bill
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |requestBody |requestField |responsefield     | filename  |responseBody|
|creditcard|get-outstandingBill| src\test\resources\testdata\api\request\Drop2\CreditCard\CCBillPayment.json|null | null| null|\src\test\resources\testdata\api\response\expected\Drop2\CreditCard\CCBillPaymentresponse.json|





