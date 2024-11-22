Feature: Regression of Fund Transfer
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/FundTransfer

@TestCaseKey=UDB-T22634 @E2E
Scenario Outline: Verify Add Payee API POST Method for Status code 200 with all fields (Mandatory and Optional)
# Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service      |endpoint     |requestBody                                                                |requestField      |responsefield |filename    |responseBody|
|fundtransfer	|/add					|src\test\resources\testdata\api\request\Drop2\fundtransfer\AddPayee.json	|null              |null          |null        |src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\AddPayee.json|

@TestCaseKey=UDB-T22648 @E2E
Scenario Outline: Verify Get Payee API POST Method for Status code 200 with all fields (Mandatory and Optional)
# Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 |requestField              				|responsefield                       |filename      						|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\GetPayee.json 	|cif,identifierType,identifierNumber  |data.cif,data.identifierType,data.identifierNumber |AddPayee.json         |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\GetPayee.json|

@TestCaseKey=UDB-T22641 @E2E
Scenario Outline: Verify Edit Payee API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                   	|requestField                                                               |responsefield              																																								 			|filename				|responseBody|
|fundtransfer	|/edit				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\EditPayee.json 		|cif,identifierType,identifierNumber, mbMaxDailyTrnLimit, mbMaxPerTrnLimit  |data[0].cif,data[0].identifierType,data[0].identifierNumber,data[0].mbMaxDailyTrnLimit,data[0].mbMaxPerTrnLimit |	GetPayee.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\EditPayee.json|

@TestCaseKey=UDB-T22663  @E2E
Scenario Outline: Verify SetPerTransLimit API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody          																																	|requestField   |responsefield    	|filename       |responseBody|
|fundtransfer	|/setPerTransactionLimit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\SetPerTransactionLimit.json |cif 						|data.cif 				|EditPayee.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\SetPerTransactionLimit.json|

@TestCaseKey=UDB-T31639 @E2E
Scenario Outline: Verify Customer-Consumed-Limit API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 						|requestField   |responsefield    |filename     								|responseBody|
|limit		|/get-customer-consumed-limit	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\CustomerConsumedLimit.json  |cif 						|data.cif 				|SetPerTransactionLimit.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\CustomerConsumedLimit.json|

@TestCaseKey=UDB-T30357 @E2E
Scenario Outline: Verify ther bank transfer, fund transfer API POST MethodStatus code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service        |endpoint                 	|requestBody                                                                					|requestField |responsefield  |filename 			|responseBody|
|payment        |/outside-bank-transfer     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransfer.json  |cif					|data.cif					|EditPayee.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransfer.json|

@TestCaseKey=UDB-T31632 @E2E
Scenario Outline: Verify Payee-Consumed-Limit API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 		|requestField |responsefield  |filename 			|responseBody|
|limit		|/get-payee-consumed-limit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\PayeeConsumed.json |cif					|data.cif				|EditPayee.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\PayeeConsumed.json|

@TestCaseKey=UDB-T22655 @E2E
Scenario Outline: Verify Delete Payee API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody            																												|requestField													|responsefield																		|filename          |responseBody|
|fundtransfer	|/delete			|\src\test\resources\testdata\api\request\Drop2\fundtransfer\DeletePayee.json		|cif,accountNumber,identifierType	|data.cif,data.identifierNumber,data.identifierType	 |AddPayee.json   	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\DeletePayee.json|

@TestCaseKey=UDB-T30350 @E2E
Scenario Outline: Verify within bank transfer, fund transfer API POST MethodStatus code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    							|requestBody                                                                 						|requestField		|responsefield	|filename								|responseBody|
|payment	|/within-bank-transfer		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransfer.json  	|null					|null				|null													|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransfer.json|

@TestCaseKey=UDB-T31706 @E2E
Scenario Outline: Verify ADD FAV TRANSACTION API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     		|requestBody                                                                 		  	|requestField 							 	|responsefield	  										 |filename								 |responseBody|
|fundtransfer	|/add-fav-trans		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\AddFavTransaction.json |cif,paymentTrnId							|data.cif,data.txnId 							 |WithinBankTransfer.json   |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\AddFavTransaction.json|

@TestCaseKey=UDB-T31699 @E2E
Scenario Outline: Verify GET FAV TRANSACTION API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 	      |requestField 							 	|responsefield	  				|filename									|responseBody|
|fundtransfer	|/get-fev-transactions	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\FavTransaction.json 		|cif													|data.cif 								|WithinBankTransfer.json		|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\FavTransaction.json|

@TestCaseKey=UDB-T30704 @E2E
Scenario Outline: Verify the Name Enquiry-P2P IMPS API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														|requestField 							 	|responsefield	  				|filename			              |responseBody|
|impsnameenquiry	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\NameEnquiryP2P.json  |cif													|data.cif 								|WithinBankTransfer.json	 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\NameEnquiryP2P.json|

@TestCaseKey=UDB-T30718 @E2E
Scenario Outline: Verify P2A-MONEY-TRANSFER API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|requestField 			|responsefield	  				|filename			 							|responseBody|
|impstransfer	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\MoneyTransferP2A.json |cif									|data.cif 								|WithinBankTransfer.json 		|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\MoneyTransferP2A.json|

@TestCaseKey=UDB-T30697 @E2E
Scenario Outline: Verify the Name Enquiry-P2A IMPS API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody                                                                 				|requestField 			|responsefield	  				|filename		 								|responseBody|
|impsnameenquiry	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\NameEnquiryP2A.json 		|cif								|data.cif 								|WithinBankTransfer.json	 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\NameEnquiryP2A.json|

@TestCaseKey=UDB-T30711 @E2E
Scenario Outline: Verify P2P-MONEY-TRANSFER API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|requestField 			|responsefield	  				|filename									|responseBody|
|impstransfer	|/p2p			 	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\MoneyTransferP2P.json  |cif								|data.cif 								|WithinBankTransfer.json	 |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\MoneyTransferP2P.json|

@TestCaseKey=UDB-T35732 @EdegeCase
Scenario Outline: Verify Add Payees API for existing payees to ensure that users are not able to add the same payee multiple times.
# Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service      |endpoint   |requestBody     																															|responseBody|
|fundtransfer	|/add				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\AddPayeeEC1.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\AddPayeeEC1.json|

@TestCaseKey=UDB-T35759 @EdegeCase
Scenario Outline: Verify the Other Bank Transfer API for RTGS error handling to ensure that users attempting to transfer funds less than 2 lakh are properly restricted.
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service        |endpoint                 	|requestBody                                                                						|responseBody|
|payment        |/outside-bank-transfer     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferEC2.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferEC2.json|

@TestCaseKey=UDB-T35760 @EdegeCase
Scenario Outline: Verify add favourite transaction API  for existing favourite transaction to ensure that users are not able to add the same favourite transaction multiple times.
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     		|requestBody                                                                 		  		                |responseBody|
|fundtransfer	|/add-fav-trans		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\AddFavTransactionEC3.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\AddFavTransactionEC3.json|

@TestCaseKey=UDB-T35731 @EdegeCase
Scenario Outline: Verify within bank transfer API for PAN card checks to ensure that users attempting to transfer funds greater then fifty thousands are properly handled
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     		|requestBody                                                                 		  |responseBody|
|payment	|/within-bank-transfer	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferPCEC4.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferPCEC4.json|

@TestCaseKey=UDB-T35815 @TestDataScenario
Scenario Outline: Verify Within bank transfer API for Saving Account/Current Account/Loan Account with the payment mode Within Bank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    							|requestBody                                                                 						|responseBody|
|payment	|/within-bank-transfer		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBTDS.json|

@TestCaseKey=UDB-T35816 @TestDataScenario
Scenario Outline: Verify Within Bank transfer API for Saving Account / Current Account / Loan Account  Accounts with the payment mode Within Bank for scheduled payments and a frequency type One Time
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    							|requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBSPOTTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBSPOTTDS.json|

@TestCaseKey=UDB-T35817 @TestDataScenario
Scenario Outline: Verify Within Bank transfer API for Saving Account / Current Account / Loan Account  Accounts with the payment mode Within Bank for scheduled payments and a frequency type Monthly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    							|requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBSPMTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBSPMTDS.json|

@TestCaseKey=UDB-T35818 @TestDataScenario
Scenario Outline: Verify Within Bank transfer API for Saving Account / Current Account / Loan Account  Accounts with the payment mode Within Bank for scheduled payments and a frequency type Quarterly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint    							|requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBSPQUARTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBSPQUARTDS.json|

@TestCaseKey=UDB-T35819 @TestDataScenario
Scenario Outline: Verify Within Bank transfer API for Saving Account / Current Account / Loan Account  Accounts with the payment mode Within Bank for scheduled payments and a frequency type Half Yearly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBSPHAFYERTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBSPHAFYERTDS.json|

@TestCaseKey=UDB-T35820 @TestDataScenario
Scenario Outline: Verify Within Bank transfer API for Saving Account / Current Account / Loan Account  Accounts with the payment mode Within Bank for scheduled payments and a frequency type Yearly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\WithinBankTransferSAWBSPYERTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\WithinBankTransferSAWBSPYERTDS.json|

@TestCaseKey=UDB-T35821 @TestDataScenario
Scenario Outline: Verify Other bank transfer API for Saving Account/Current Account/Loan Account with the payment mode RTGS
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service        |endpoint                 	|requestBody                                                                						|responseBody|
|payment        |/outside-bank-transfer     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSARTGSTDS.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSARTGSTDS.json|

@TestCaseKey=UDB-T35822 @TestDataScenario
Scenario Outline: Verify Other bank transfer API for Saving Account/Current Account/Loan Account with the payment mode IMPS
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service        |endpoint                 	|requestBody                                                                						|responseBody|
|payment        |/outside-bank-transfer     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSAIMPSTDS.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSARTGSTDS.json|

@TestCaseKey=UDB-T35823 @TestDataScenario
Scenario Outline: Verify Other Bank transfer API for Saving Account/Current Account/Loan Account with the payment mode NEFT for scheduled payments and a frequency type One Time
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSPOTTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSPOTTDS.json|

@TestCaseKey=UDB-T35825 @TestDataScenario
Scenario Outline: Verify Other Bank transfer API for Saving Account/Current Account/Loan Account with the payment mode NEFT for scheduled payments and a frequency type Monthly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSPMTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSPMTDS.json|

@TestCaseKey=UDB-T35826 @TestDataScenario
Scenario Outline: Verify Other Bank transfer API for Saving Account/Current Account/Loan Account with the payment mode NEFT for scheduled payments and a frequency type Quarterly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSPQUARTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSPQUARTDS.json|

@TestCaseKey=UDB-T35827 @TestDataScenario
Scenario Outline: Verify Other Bank transfer API for Saving Account/Current Account/Loan Account with the payment mode NEFT for scheduled payments and a frequency type Half Yearly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSPHAFYERTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSPHAFYERTDS.json|

@TestCaseKey=UDB-T35828 @TestDataScenario
Scenario Outline: Verify Other Bank transfer API for Saving Account/Current Account/Loan Account with the payment mode NEFT for scheduled payments and a frequency type  Yearly
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service  						|endpoint   |requestBody                                                                 						|responseBody|
|standinginstruction	|/set-si		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\OtherBankTransferSPYERTDS.json |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\OtherBankTransferSPYERTDS.json|


@TestCaseKey=UDB-T34796 @TestDataScenario
Scenario Outline: Verify RECENT TRANSACTION API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|fundtransfer	|/transactionHistory				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\RecentTrans.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\RecentTransResp.json|

@TestCaseKey=UDB-T34797 @TestDataScenario
Scenario Outline: Verify BRANCH BY IFSC API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|smartsearch	|/branch-by-ifsc				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Branchbyifsc.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Branchbyifsc.json|

@TestCaseKey=UDB-T34798 @TestDataScenario
Scenario Outline: Verify IFSC SEARCH API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|smartsearch	|/ifsc-search				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\ifscsearch.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\ifscsearch.json|


@TestCaseKey=UDB-T22637 @Regression
Scenario Outline: Verify add payees fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/add					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddPayeeReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddPayeeResp.json|


@TestCaseKey=UDB-T22638 @Regression
Scenario Outline: Verify add payee API POST Method for Status code 400 if Request body is invalid JSON
Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/add					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddPayeeIJReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddPayeeIJResp.json|



@TestCaseKey=UDB-T22636 @Regression
Scenario Outline: Verify add payee  API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/add					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddPayeeOFReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddPayeeOFResp.json|



@TestCaseKey=UDB-T32940 @Regression
Scenario Outline: Verify add payees fund transfer API POST Method for Status code 404 if Endpoint url is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/add1					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404AddPayeeReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404AddPayeeResp.json|


@TestCaseKey=UDB-T22639 @Regression
Scenario Outline: Verify add payees fund transfer API POST Method for Status code 405 if request method is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a GET request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/add					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405AddPayeeReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405AddPayeeResp.json|


@TestCaseKey=UDB-T22644 @Regression
Scenario Outline: Verify edit payees fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/edit				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400EditPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400EditPayeeResp.json|

@TestCaseKey=UDB-T22645 @Regression
Scenario Outline: Verify Edit Payee API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/edit				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400EditPayeeIJReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400EditPayeeIJResp.json|


@TestCaseKey=UDB-T22643 @Regression
Scenario Outline: Verify Edit Payee API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/edit				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400EditPayeeOFReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400EditPayeeOFResp.json|


@TestCaseKey=UDB-T22647 @Regression
Scenario Outline: Verify edit payees fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/edit1				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404EditPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404EditPayeeResp.json|

@TestCaseKey=UDB-T22646 @Regression
Scenario Outline: Verify Edit Payee API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/edit				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405EditPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405EditPayeeResp.json|

@TestCaseKey=UDB-T22658 @Regression
Scenario Outline: Verify delete payee fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 		  |responseBody|
|fundtransfer	|/delete			|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400DeletePayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400DeletePayeeResp.json|



@TestCaseKey=UDB-T22659 @Regression
Scenario Outline: Verify Delete Payee API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 		  |responseBody|
|fundtransfer	|/delete			|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400DeletePayeeIJReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400DeletePayeeIJResp.json|

@TestCaseKey=UDB-T22657 @Regression
Scenario Outline: Verify Delete Payee API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 		  |responseBody|
|fundtransfer	|/delete			|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400DeletePayeeOFReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400DeletePayeeOFResp.json|

@TestCaseKey=UDB-T22661 @Regression
Scenario Outline: Verify delete payee fund transfer API POST Method for Status code 404 if Endpoint url is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 		  |responseBody|
|fundtransfer	|/delete1			|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404DeletePayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404DeletePayeeResp.json|


@TestCaseKey=UDB-T22660 @Regression
Scenario Outline: Verify delete Payee API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/delete				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405DeletePayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405DeletePayeeResp.json|

@TestCaseKey=UDB-T31709 @Regression
Scenario Outline: Verify add favourite transaction API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400

Examples:
|service     	|endpoint     					|requestBody                                                                 									|responseBody|
|fundtransfer	|/add-fav-trans					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddFavTransactionReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddFavTransactionResp.json|




@TestCaseKey=UDB-T31710 @Regression
Scenario Outline: Verify ADD FAV TRANSACTION API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400

Examples:
|service     	|endpoint     					|requestBody                                                                 									|responseBody|
|fundtransfer	|/add-fav-trans					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddFavTransactionIJReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddFavTransactionIJResp.json|

@TestCaseKey=UDB-T31708 @Regression
Scenario Outline: Verify ADD FAV TRANSACTION API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400

Examples:
|service     	|endpoint     					|requestBody                                                                 									|responseBody|
|fundtransfer	|/add-fav-trans					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400AddFavTransactionOFReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400AddFavTransactionOFResp.json|


@TestCaseKey=UDB-T31712 @Regression
Scenario Outline: Verify add favourite transaction API POST Method for Status code 404 if Endpoint url is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service     	|endpoint     				|requestBody                                                                 									|responseBody|
|fundtransfer	|/add-fav-trans1				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404AddFavTransactionReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404AddFavTransactionResp.json|


@TestCaseKey=UDB-T31711 @Regression
Scenario Outline: Verify ADD FAV TRANSACTION API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405

Examples:
|service     	|endpoint     				|requestBody                                                                 									|responseBody|
|fundtransfer	|/add-fav-trans				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405AddFavTransactionReq.json	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405AddFavTransactionResp.json|


@TestCaseKey=UDB-T22651 @Regression
Scenario Outline: Verify get payee API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GetPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GetPayeeResp.json|

@TestCaseKey=UDB-T22652 @Regression
Scenario Outline: Verify Get Payee API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GetPayeeIJReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GetPayeeIJResp.json|

@TestCaseKey=UDB-T22650 @Regression
Scenario Outline: Verify Get Payee API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GetPayeeOFReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GetPayeeOFResp.json|

@TestCaseKey=UDB-T22654 @Regression
Scenario Outline: Verify get payee API POST Method for Status code 404 if Endpoint url is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/get-payee	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404GetPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404GetPayeeResp.json|

@TestCaseKey=UDB-T22653 @Regression
Scenario Outline: Verify Get Payee API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     |requestBody                                                                 	|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405GetPayeeReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405GetPayeeResp.json|

@TestCaseKey=UDB-T31702 @Regression
Scenario Outline: Verify favourite transaction fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 							|responseBody|
|fundtransfer	|/get-fev-transactions	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400FavTransactionReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400FavTransactionResp.json|

@TestCaseKey=UDB-T31703 @Regression
Scenario Outline: Verify favourite transaction fund transfer API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 							|responseBody|
|fundtransfer	|/get-fev-transactions	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400FavTransactionIJReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400FavTransactionIJResp.json|

@TestCaseKey=UDB-T31701 @Regression
Scenario Outline: Verify favourite transaction fund transfer API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 									|responseBody|
|fundtransfer	|/get-fev-transactions	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400FavTransactionOFReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400FavTransactionOFResp.json|

@TestCaseKey=UDB-T31705 @Regression
Scenario Outline: Verify favourite transaction fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 					|responseBody|
|fundtransfer	|/get-fev-transactions1	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404FavTransactionReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404FavTransactionResp.json|

@TestCaseKey=UDB-T31704 @Regression
Scenario Outline: Verify favourite transaction fund transfer API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     					|requestBody                                                                 					|responseBody|
|fundtransfer	|/get-fev-transactions	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405FavTransactionReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405FavTransactionResp.json|

@TestCaseKey=UDB-T22666 @Regression
Scenario Outline: Verify set per transaction limit API POST Method for Status code 400 if request body is blank 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody                                                                 									|responseBody|
|fundtransfer	|/setPerTransactionLimit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SetPerTransactionLimitReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SetPerTransactionLimitResp.json|

@TestCaseKey=UDB-T22667 @Regression
Scenario Outline: Verify set per transaction limit API POST Method for Status code 400 if Request body is invalid JSON 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody                                                                 									|responseBody|
|fundtransfer	|/setPerTransactionLimit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SetPerTransactionLimitIJReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SetPerTransactionLimitIJResp.json|

@TestCaseKey=UDB-T22665 @Regression
Scenario Outline: Verify set per transaction limit API POST Method for Status code 400 with Only Optional fields available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody                                                                 									|responseBody|
|fundtransfer	|/setPerTransactionLimit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SetPerTransactionLimitOFReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SetPerTransactionLimitOFResp.json|


@TestCaseKey=UDB-T22669 @Regression
Scenario Outline: Verify set per transaction limit API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody                                                                 									|responseBody|
|fundtransfer	|/setPerTransactionLimi	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404SetPerTransactionLimitReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404SetPerTransactionLimitResp.json|

@TestCaseKey=UDB-T22668 @Regression
Scenario Outline: Verify set per transaction limit API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint     						|requestBody                                                                 									|responseBody|
|fundtransfer	|/setPerTransactionLimi	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405SetPerTransactionLimitReq.json 	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405SetPerTransactionLimitResp.json|


@TestCaseKey=UDB-T31642 @Regression
Scenario Outline: Verify customer consumed limit fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 							 |responseBody|
|limit		|/get-customer-consumed-limit	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CustomerConsumedLimitReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CustomerConsumedLimitResp.json|

@TestCaseKey=UDB-T31643 @Regression
Scenario Outline: Verify customer consumed limit fund transfer API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 							 |responseBody|
|limit		|/get-customer-consumed-limit	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CustomerConsumedLimitIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CustomerConsumedLimitIJResp.json|

@TestCaseKey=UDB-T31641 @Regression
Scenario Outline: Verify customer consumed limit fund transfer API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 							 |responseBody|
|limit		|/get-customer-consumed-limit	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CustomerConsumedLimitOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CustomerConsumedLimitOFResp.json|


@TestCaseKey=UDB-T31645 @Regression
Scenario Outline: Verify customer consumed limit fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 							 |responseBody|
|limit		|/get-customer-consumed-limit1	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404CustomerConsumedLimitReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404CustomerConsumedLimitResp.json|

@TestCaseKey=UDB-T31644 @Regression
Scenario Outline: Verify customer consumed limit fund transfer API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    									 |requestBody                                                                 							 |responseBody|
|limit		|/get-customer-consumed-limit	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405CustomerConsumedLimitReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405CustomerConsumedLimitResp.json|

@TestCaseKey=UDB-T32958 @Regression
Scenario Outline: Verify within bank transfer, fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service  |endpoint    								|requestBody                                                                 				|responseBody|
|payment		|/within-bank-transfer		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400WithinBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400WithinBankTransferResp.json|


@TestCaseKey=UDB-T32959 @Regression
Scenario Outline: Verify within bank transfer, fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service  |endpoint    								|requestBody                                                                 				|responseBody|
|payment		|/within-bank-transfer1		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404WithinBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404WithinBankTransferResp.json|

@TestCaseKey=UDB-T32960 @Regression
Scenario Outline: Verify within bank transfer, fund transfer API POST Method for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service  |endpoint    								|requestBody                                                                 				|responseBody|
|payment		|/within-bank-transfer		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405WithinBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405WithinBankTransferResp.json|

@TestCaseKey=UDB-T32961 @Regression
Scenario Outline: Verify Other bank fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service        |endpoint                 	|requestBody                                                                						|responseBody|
|payment        |/outside-bank-transfer     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400OtherBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400OtherBankTransferResp.json|

@TestCaseKey=UDB-T32962 @Regression
Scenario Outline: Verify Other bank fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service        |endpoint                 	|requestBody                                                                						|responseBody|
|payment        |/outside-bank-transfer1     |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404OtherBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404OtherBankTransferResp.json|

@TestCaseKey=UDB-T32963 @Regression
Scenario Outline: Verify Other bank transfer, fund transfer API POST Method for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service  |endpoint    								|requestBody                                                                 				|responseBody|
|payment		|/outside-bank-transfer		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405OtherBankTransferReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405OtherBankTransferResp.json|


@TestCaseKey=UDB-T31635 @Regression
Scenario Outline: Verify payee consumed limit, fund transfer API POST Method for Status code 400 if request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 							|responseBody|
|limit		|/get-payee-consumed-limit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400PayeeConsumedReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400PayeeConsumedResp.json|

@TestCaseKey=UDB-T31636 @Regression
Scenario Outline: Verify payee consumed limit, fund transfer  API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 							|responseBody|
|limit		|/get-payee-consumed-limit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400PayeeConsumedIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400PayeeConsumedIJResp.json|

@TestCaseKey=UDB-T31634 @Regression
Scenario Outline: Verify payee consumed limit, fund transfer API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 							|responseBody|
|limit		|/get-payee-consumed-limit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400PayeeConsumedOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400PayeeConsumedOFResp.json|


@TestCaseKey=UDB-T31638 @Regression
Scenario Outline: Verify payee consumed limit, fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 							|responseBody|
|limit		|/get-payee-consumed-limit1	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404PayeeConsumedReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404PayeeConsumedResp.json|

@TestCaseKey=UDB-T31637 @Regression
Scenario Outline: Verify payee consumed limit, fund transfer API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service  |endpoint    								|requestBody                                                                 							|responseBody|
|limit		|/get-payee-consumed-limit	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405PayeeConsumedReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405PayeeConsumedResp.json|


@TestCaseKey=UDB-T30714 @Regression
Scenario Outline: Verify the initiate money transfer P2P for IMPS using the fund transfer API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2PReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2PResp.json|

@TestCaseKey=UDB-T30715 @Regression
Scenario Outline: Verify the initiate money transfer P2P for IMPS using the fund transfer  API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2PIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2PIJResp.json|

@TestCaseKey=UDB-T30713 @Regression
Scenario Outline: Verify the initiate money transfer P2P for IMPS using the fund transfer  API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2POFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2POFResp.json|

@TestCaseKey=UDB-T30717 @Regression
Scenario Outline: Verify the initiate money transfer P2P for IMPS using the fund transfer, API POST method expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2p1				|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404MoneyTransferP2PReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404MoneyTransferP2PResp.json|


@TestCaseKey=UDB-T30716 @Regression
Scenario Outline: Verify the initiate money transfer P2P for IMPS using the fund transfer  API for Status code 405 if HTTP metod is other than POST  for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405MoneyTransferP2PReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405MoneyTransferP2PResp.json|


@TestCaseKey=UDB-T30721 @Regression
Scenario Outline: Verify the initiate money transfer P2A for IMPS using the fund transfer API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2AReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2AResp.json|

@TestCaseKey=UDB-T30722 @Regression
Scenario Outline: Verify the initiate money transfer P2A for IMPS using the fund transfer API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2AIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2AIJResp.json|

@TestCaseKey=UDB-T30720 @Regression
Scenario Outline: Verify the initiate money transfer P2A for IMPS using the fund transfer API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400MoneyTransferP2AOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400MoneyTransferP2AOFResp.json|


@TestCaseKey=UDB-T30724 @Regression
Scenario Outline: Verify the initiate money transfer P2A for IMPS using the fund transfer, API POST method expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2a1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404MoneyTransferP2AReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404MoneyTransferP2AResp.json|

@TestCaseKey=UDB-T30723 @Regression
Scenario Outline: Verify the initiate money transfer P2A API for Status code 405 if HTTP metod is other than POST for Eg: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|impstransfer	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404MoneyTransferP2AReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404MoneyTransferP2AResp.json|



@TestCaseKey=UDB-T34789 @Regression
Scenario Outline: Verify the SET SI API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/set-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SETSIResp.json|

@TestCaseKey=UDB-T34790 @Regression
Scenario Outline: Verify the SET SI API POST method, expecting a status code of 400 if the request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/set-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SETSIIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SETSIIJResp.json|

@TestCaseKey=UDB-T34788 @Regression
Scenario Outline: Verify the SET SI API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/set-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400SETSIOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400SETSIOFResp.json|

@TestCaseKey=UDB-T34791 @Regression
Scenario Outline: Verify the SET SI API POST method, expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/set-si1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404SETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404SETSIResp.json|

@TestCaseKey=UDB-T34792 @Regression
Scenario Outline: Verify the SET SI API POST Method for Status code 405 if request method is incorrect for example: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/set-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405SETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405SETSIResp.json|


@TestCaseKey=UDB-T34796 @Regression
Scenario Outline: Verify the GET SI API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIResp.json|

@TestCaseKey=UDB-T34797 @Regression
Scenario Outline: Verify the GET SI API POST Method for Status code 400 if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIIJResp.json|

@TestCaseKey=UDB-T34795 @Regression
Scenario Outline: Verify the GET SI API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIOFResp.json|

@TestCaseKey=UDB-T34798 @Regression
Scenario Outline: Verify the GET SI API POST method, expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404GETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404GETSIResp.json|

@TestCaseKey=UDB-T34799 @Regression
Scenario Outline: Verify the GET SI API POST Method for Status code 405 if request method is incorrect for example: GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405GETSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405GETSIResp.json|


@TestCaseKey=UDB-T34810 @Regression
Scenario Outline: Verify the GET SI RECORDS API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIRReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIRResp.json|

@TestCaseKey=UDB-T34811 @Regression
Scenario Outline: Verify the GET SI RECORDS API POST method, expecting a status code of 400 if the request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIRIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIRIJResp.json|

@TestCaseKey=UDB-T34809 @Regression
Scenario Outline: Verify the GET SI RECORDS API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400GETSIROFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400GETSIROFResp.json|

@TestCaseKey=UDB-T34812 @Regression
Scenario Outline: Verify the GET SI RECORDS API POST method, expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records1		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404GETSIRReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404GETSIRResp.json|

@TestCaseKey=UDB-T34813 @Regression
Scenario Outline: Verify the GET SI RECORDS API POST Method for Status code 405 if request method is incorrect for example:GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records		|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404GETSIRReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404GETSIRResp.json|


@TestCaseKey=UDB-T34803 @Regression
Scenario Outline: Verify the CANCEL SI API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/cancel-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CANCELSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CANCELSIResp.json|

@TestCaseKey=UDB-T34804 @Regression
Scenario Outline: Verify the CANCEL SI API POST method, expecting a status code of 400 if the request body is  invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/cancel-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CANCELSIIJReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CANCELSIIJResp.json|

@TestCaseKey=UDB-T34802 @Regression
Scenario Outline: Verify the CANCEL SI API POST Method for Status code 400 with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/cancel-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400CANCELSIOFReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400CANCELSIOFResp.json|

@TestCaseKey=UDB-T34805 @Regression
Scenario Outline: Verify the CANCEL SI API POST Method, expecting a status code of 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/cancel-si1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404CANCELSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404CANCELSIResp.json|

@TestCaseKey=UDB-T34806 @Regression
Scenario Outline: Verify the CANCEL SI API POST Method for Status code 405 if request method is incorrect for example:GET
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/cancel-si				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405CANCELSIReq.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405CANCELSIResp.json|


@TestCaseKey=UDB-T32973 @Regression
Scenario Outline: Verify the Name Enquiry of P2P for IMPS using the fund transfer API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400NameEnquiryP2PReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400NameEnquiryP2PResp.json|


@TestCaseKey=UDB-T32974 @Regression
Scenario Outline: Verify the  Name Enquiry of P2P for IMPS using the fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2p1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404NameEnquiryP2PReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404NameEnquiryP2PResp.json|

@TestCaseKey=UDB-T32975 @Regression
Scenario Outline: Verify the Name Enquiry of P2P for IMPS using the fund transfer API POST Method for Status code 405 if request method is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2p				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405NameEnquiryP2PReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405NameEnquiryP2PResp.json|


@TestCaseKey=UDB-T32976 @Regression
Scenario Outline: Verify the Name Enquiry of P2A for IMPS using the fund transfer API POST method, expecting a status code of 400 if the request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg400NameEnquiryP2AReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg400NameEnquiryP2AResp.json|


@TestCaseKey=UDB-T32977 @Regression
Scenario Outline: Verify the  Name Enquiry of P2A for IMPS using the fund transfer API POST Method for Status code 404 if endpoint is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2a1				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg404NameEnquiryP2AReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg404NameEnquiryP2AResp.json|

@TestCaseKey=UDB-T32978 @Regression
Scenario Outline: Verify the Name Enquiry of P2A for IMPS using the fund transfer API POST Method for Status code 405 if request method is incorrect
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service     			|endpoint    |requestBody          																														 |responseBody|
|impsnameenquiry	|/p2a				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg405NameEnquiryP2AReq.json  	|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg405NameEnquiryP2AResp.json|

