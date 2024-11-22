Feature: Smoke Test of BBPS APIs
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/bbps
  

#======================getPendingBills=====================
		
		@TestCaseKey=UDB-T17054 @BBPS-01
 		Scenario Outline: Verify 200 success response for getPendingBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getPendingBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getPendingBills_request.json	|	null | null | null	| src/test/resources/testdata/api/response/expected/Drop2/bbps/getPendingBills_response.json	|      


#======================getAutopayBills=====================

		@TestCaseKey=UDB-T17058
 		Scenario Outline: Verify 200 success response for getAutopayBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getAutopayBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|	null | null | null	| 	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAutopayBills_response.json	|      

		
#======================getPastPaymentDtls=====================

		@TestCaseKey=UDB-T17059
 		Scenario Outline: Verify 200 success response for getPastPaymentDtls API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getPastPaymentDtls	|	src/test/resources/testdata/api/request/Drop2/bbps/getPastPaymentDtls_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getPastPaymentDtls_response.json	|      

		
#======================onClickServiceProvider=====================

		@TestCaseKey=UDB-T28829
 		Scenario Outline: Verify 200 success response for onClickServiceProvider API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		#Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickServiceProvider	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProvider_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProvider_response.json	|      

		
#======================onClickUtilityGas=====================

		@TestCaseKey=UDB-T16879
 		Scenario Outline: Verify 200 success response for onClickUtilityGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUtilityGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityGas_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityGas_response.json	|      

	
#======================onClickUtilityRental=====================

		@TestCaseKey=UDB-T16947
 		Scenario Outline: Verify 200 success response for onClickUtilityRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUtilityRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityRental_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityRental_response.json	|      

		
#======================onClickUtilityElectricity=====================

		@TestCaseKey=UDB-T16017
 		Scenario Outline: Verify 200 success response for onClickUtilityElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUtilityElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityElectricity_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityElectricity_response.json	|      

	
									
#======================onClickRechargeFastag=====================

		@TestCaseKey=UDB-T29840
 		Scenario Outline: Verify 200 success response for onClickRechargeFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickRechargeFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeFastag_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeFastag_response.json	|      

		

#======================onClickProviderDetailContinueFastag=====================

		@TestCaseKey=UDB-T28912
 		Scenario Outline: Verify 200 success response for onClickProviderDetailContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickProviderDetailContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueFastag_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueFastag_response.json	|      

		
#======================onClickTransactionPinContinueFastag=====================

		@TestCaseKey=UDB-T30068
 		Scenario Outline: Verify 200 success response for onClickTransactionPinContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickTransactionPinContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueFastag_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueFastag_response.json	|      

		
#======================onClickUtilityDTH=====================

		@TestCaseKey=UDB-T16952
 		Scenario Outline: Verify 200 success response for onClickUtilityDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUtilityDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityDTH_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityDTH_response.json	|      

		
									
#======================onClickProviderDetailContinueDTH=====================

		@TestCaseKey=UDB-T28973
 		Scenario Outline: Verify 200 success response for onClickProviderDetailContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickProviderDetailContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueDTH_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueDTH_response.json	|      

		
#======================onClickTransactionPinContinueDTH=====================

		@TestCaseKey=UDB-T28981
 		Scenario Outline: Verify 200 success response for onClickTransactionPinContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickTransactionPinContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueDTH_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueDTH_response.json	|      

												
#======================onClickRechargeMobile=====================

		@TestCaseKey=UDB-C67
 		Scenario Outline: Verify 200 success response for onClickRechargeMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickRecharge	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeMobile_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeMobile_response.json	|      

			
#======================onClickContact=====================

		@TestCaseKey=UDB-C68
 		Scenario Outline: Verify 200 success response for onClickContact API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickContact	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickContact_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickContact_response.json	|      

			
									
#======================onClickTransactionPinContinueMobile=====================

		@TestCaseKey=UDB-C66
 		Scenario Outline: Verify 200 success response for onClickTransactionPinContinueMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickTransactionPinContinue	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueMobile_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueMobile_response.json	|      

					
									
#======================onClickUserNotEnabledAutoPay=====================

		@TestCaseKey=UDB-C69
 		Scenario Outline: Verify 200 success response for onClickUserNotEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUserNotEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUserNotEnabledAutoPay_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUserNotEnabledAutoPay_response.json	|      

																											
#======================userChangeNickName=====================

		@TestCaseKey=UDB-T28711
 		Scenario Outline: Verify 200 success response for userChangeNickName API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/userChangeNickName	|	src/test/resources/testdata/api/request/Drop2/bbps/userChangeNickName_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/userChangeNickName_response.json	|      

																																					

#======================onClickPayNowBills=====================

		@TestCaseKey=UDB-T28693
 		Scenario Outline: Verify 200 success response for onClickPayNowBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickPayNowBills	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayNowBills_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayNowBills_response.json	|      

				

#======================userContinueAutopay=====================

		@TestCaseKey=UDB-T28687
 		Scenario Outline: Verify 200 success response for userContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/userContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/userContinueAutopay_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/userContinueAutopay_response.json	|      

		
#======================userEnabledAutoPay=====================

		@TestCaseKey=UDB-C65
 		Scenario Outline: Verify 200 success response for userEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/userEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/userEnabledAutoPay_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/userEnabledAutoPay_response.json	|      

		
									
#======================onClickServiceProviderGas=====================

		@TestCaseKey=UDB-T28834
 		Scenario Outline: Verify 200 success response for onClickServiceProviderGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickServiceProviderGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderGas_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderGas_response.json	|      

				
									
#======================onClickServiceProviderRental=====================

		@TestCaseKey=UDB-T28926
 		Scenario Outline: Verify 200 success response for onClickServiceProviderRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickServiceProviderRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderRental_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderRental_response.json	|      

		
#======================onClickServiceProviderElectricity=====================

		@TestCaseKey=UDB-T28930
 		Scenario Outline: Verify 200 success response for onClickServiceProviderElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickServiceProviderElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderElectricity_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderElectricity_response.json	|      

		
#======================getBBPSDashData=====================

		@TestCaseKey=UDB-T28706
 		Scenario Outline: Verify 200 success response for getBBPSDashData API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getBBPSDashData	|	src/test/resources/testdata/api/request/Drop2/bbps/getBBPSDashData_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getBBPSDashData_response.json	|      

		
#======================onFilterPastPayment=====================

		@TestCaseKey=UDB-T28706
 		Scenario Outline: Verify 200 success response for onFilterPastPayment API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onFilterPastPayment	|	src/test/resources/testdata/api/request/Drop2/bbps/onFilterPastPayment_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onFilterPastPayment_response.json	|      

		
#======================onClickTransactionPinContinueAutopay=====================

		@TestCaseKey=UDB-T28918
 		Scenario Outline: Verify 200 success response for onClickTransactionPinContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		#Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
				|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 	cif	|
					|	bbps	|	/onClickTransactionPinContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueAutopay_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueAutopay_response.json	|	2002605586 |      

		
#======================onClickPayAgain=====================

		@TestCaseKey=UDB-T29692
 		Scenario Outline: Verify 200 success response for onClickPayAgain API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickPayAgain	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayAgain_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayAgain_response.json	|      

		

#======================raiseComplaint=====================

		@TestCaseKey=UDB-T28699
 		Scenario Outline: Verify 200 success response for raiseComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/raiseComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/raiseComplaint_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/raiseComplaint_response.json	|      

		
#======================trackComplaint=====================

		@TestCaseKey=UDB-T30065
 		Scenario Outline: Verify 200 success response for trackComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/trackComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/trackComplaint_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/trackComplaint_response.json	|      

		
#======================onClickUtility=====================

		@TestCaseKey=UDB-T16002
 		Scenario Outline: Verify 200 success response for onClickUtility API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_response.json	|      

		
#======================userClickRemoveAccount=====================

		@TestCaseKey=UDB-C70
 		Scenario Outline: Verify 200 success response for userClickRemoveAccount API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/userClickRemoveAccount	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|      

		
#======================getAccountList=====================

		@TestCaseKey=UDB-C71
 		Scenario Outline: Verify 200 success response for getAccountList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getAccountList	|	src/test/resources/testdata/api/request/Drop2/bbps/getAccountList_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAccountList_response.json	|      

		
#======================linkUserWithBiller=====================

		@TestCaseKey=UDB-T15972
 		Scenario Outline: Verify 200 success response for linkUserWithBiller API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		#Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 	cif	|
					|	bbps	|	/linkUserWithBiller	|	src/test/resources/testdata/api/request/Drop2/bbps/linkUserWithBiller_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/linkUserWithBiller_response.json	|	2002605586 |      

		
#======================getComplaintReasons=====================

		@TestCaseKey=UDB-C72
 		Scenario Outline: Verify 200 success response for getComplaintReasons API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
				  |	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getComplaintReasons	|	src/test/resources/testdata/api/request/Drop2/bbps/getComplaintReasons_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getComplaintReasons_response.json	|      

		
#======================getStateList=====================

		@TestCaseKey=UDB-C73
 		Scenario Outline: Verify 200 success response for getStateList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	| 
					|	bbps	|	/getStateList	|	src/test/resources/testdata/api/request/Drop2/bbps/getStateList_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getStateList_response.json	|      

			
#======================getCityList=====================

		@TestCaseKey=UDB-C74
 		Scenario Outline: Verify 200 success response for getCityList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|  requestField   | responsefield      | filename  |  responseBody	|                     
					|	bbps	|	/getCityList	|	src/test/resources/testdata/api/request/Drop2/bbps/getCityList_request.json	|	null | null | null	|	src/test/resources/testdata/api/response/expected/Drop2/bbps/getCityList_response.json	|      

		
