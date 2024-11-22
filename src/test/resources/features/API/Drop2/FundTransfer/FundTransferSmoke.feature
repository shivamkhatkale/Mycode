 Feature: Smoke of Fund Transfer
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/FundTransfer

@TestCaseKey=UDB-T22634 @Smoke
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
|fundtransfer	|/add					|\src\test\resources\testdata\api\request\Drop2\fundtransfer\AddPayee.json	|null              |null          |null        |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\AddPayee.json|

@TestCaseKey=UDB-T22648 @Smoke
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
|service     	|endpoint     |requestBody                                                                 |requestField              				|responsefield                                        |filename      						|responseBody|
|fundtransfer	|/get-payees	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\GetPayee.json 	|cif,identifierType,identifierNumber  |data.cif,data.identifierType,data.identifierNumber |AddPayee.json         |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\GetPayee.json|

@TestCaseKey=UDB-T22641 @Smoke
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

@TestCaseKey=UDB-T22663  @Smoke
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

@TestCaseKey=UDB-T31639 @Smoke
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

@TestCaseKey=UDB-T30357 @Smoke
Scenario Outline: Verify other bank transfer, fund transfer API POST MethodStatus code 200 with all fields (Mandatory and Optional)
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

@TestCaseKey=UDB-T31632 @Smoke
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

@TestCaseKey=UDB-T22655 @Smoke
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

@TestCaseKey=UDB-T30350 @Smoke
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

@TestCaseKey=UDB-T31706 @Smoke
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

@TestCaseKey=UDB-T31699 @Smoke
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

@TestCaseKey=UDB-T30704 @Smoke
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

@TestCaseKey=UDB-T30718 @Smoke
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

@TestCaseKey=UDB-T30697 @Smoke
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

@TestCaseKey=UDB-T30711 @Smoke
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

@TestCaseKey=UDB-T34786 @Smoke
Scenario Outline: Verify SET SI API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     					|endpoint  |requestBody                                     																	|requestField 																						|responsefield	  				|filename                            					|responseBody|
|standinginstruction	|/set-si	 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg200SETSIReq.json 	|cif,identifierNumber,fromAccountNumber,mode							|data.cif, data.toAccount,data.fromAccount, data.modeOfPayment					|OtherBankTransfer.json																			 |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg200SETSIResp.json|

@TestCaseKey=UDB-T34793 @Smoke
Scenario Outline: Verify GET SI API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     					|endpoint |requestBody                                                                 			|requestField 																|responsefield	  																				|filename    						|responseBody|
|standinginstruction	|/get-si	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\Reg200GETSIReq.json 	|cif,debitAccountNumber,referenceNumber	|data.cif, data.debitAccountNumber,data.referenceNumber   |Reg200SETSIResp.json 		|\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\Reg200GETSIResp.json|

@TestCaseKey=UDB-T34794 @Smoke
Scenario Outline: Verify GET SI RECORDS API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     	|endpoint    |requestBody                                                                 					|responseBody|
|standinginstruction	|/get-si-records				 |\src\test\resources\testdata\api\request\Drop2\fundtransfer\GetSIRecord.json  |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\GetSIRecord.json|

@TestCaseKey=UDB-T34794 @Smoke
Scenario Outline: Verify CANCEL SI API POST Method for Status code 200 with all fields (Mandatory and Optional)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service     					|endpoint   |requestBody           																										 |requestField 														|responsefield	  																		|filename                |responseBody|
|standinginstruction	|/cancel-si	|\src\test\resources\testdata\api\request\Drop2\fundtransfer\CancelSI.json |cif,debitAccountNumber,serialNumber	|data.cif, data.debitAccountNumber,data.referenceNumber   |Reg200SETSIResp.json 	 |\src\test\resources\testdata\api\response\expected\Drop2\fundtransfer\CancelSI.json|


@TestCaseKey=UDB-T34796 @Smoke
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

@TestCaseKey=UDB-40167 @Smoke
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

@TestCaseKey=UDB-40168 @Smoke
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
