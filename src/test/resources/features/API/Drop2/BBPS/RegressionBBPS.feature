Feature: Regression Test of BBPS APIs
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/bbps
	
#======================getPendingBills=====================
		
		@TestCaseKey=UDB-T17054 @BBPS-02
 		Scenario Outline: Verify 200 success responce for getPendingBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	  |requestField   |responsefield      | filename     |	responseBody	|
					|	bbps	|	/getPendingBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getPendingBills_request.json	| null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getPendingBills_response.json	|      

		@TestCaseKey=UDB-T170541
 		Scenario Outline: Verify 400 error response for getPendingBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename    |	responseBody	|	attribute |	value|
					|	bbps	|	/getPendingBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getPendingBills_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getPendingBills_response.json	|	cif	| 123456789	|
				
		@TestCaseKey=UDB-T170542
 		Scenario Outline: Verify 404 error responce for getPendingBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getPendingBillsabc	|	src/test/resources/testdata/api/request/Drop2/bbps/getPendingBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getPendingBills_response.json	|      
	
		@TestCaseKey=UDB-T170543
 		Scenario Outline: Verify 500 error responce for getPendingBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getPendingBillsabc	|	src/test/resources/testdata/api/request/Drop2/bbps/getPendingBills_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getPendingBills_response.json	|	dbp-id_&_dbp-secret |

#======================getAutopayBills=====================

		@TestCaseKey=UDB-T17058
 		Scenario Outline: Verify 200 success responce for getAutopayBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/getAutopayBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAutopayBills_response.json	|      

		@TestCaseKey=UDB-T170581
 		Scenario Outline: Verify 400 error response for getAutopayBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> with updated  <attribute>  <value>
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |	value|
					|	bbps	|	/getAutopayBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAutopayBills_response.json	|	cif	| 123456789	|
				
		@TestCaseKey=UDB-T170582
 		Scenario Outline: Verify 404 error responce for getAutopayBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getAutopayBills/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAutopayBills_response.json	|      
	
		@TestCaseKey=UDB-T170583
 		Scenario Outline: Verify 500 error responce for getAutopayBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/getAutopayBills	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getAutopayBills_response.json	|	dbp-id_&_dbp-secret |	
	
#======================getPastPaymentDtls=====================

		@TestCaseKey=UDB-T17059
 		Scenario Outline: Verify 200 success responce for getPastPaymentDtls API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/getPastPaymentDtls	|	src/test/resources/testdata/api/request/Drop2/bbps/getPastPaymentDtls_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getPastPaymentDtls_response.json	|      

		@TestCaseKey=UDB-T170591
 		Scenario Outline: Verify 400 error response for getPastPaymentDtls API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> with updated  <attribute>  <value>
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |	value|
					|	bbps	|	/getPastPaymentDtls	|	src/test/resources/testdata/api/request/Drop2/bbps/getAutopayBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getPastPaymentDtls_response.json	|	cif	| 123456789	|
				
		@TestCaseKey=UDB-T170592
 		Scenario Outline: Verify 404 error responce for getPastPaymentDtls API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getPastPaymentDtls/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getPastPaymentDtls_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getPastPaymentDtls_response.json	|      
	
		@TestCaseKey=UDB-T170593
 		Scenario Outline: Verify 500 error responce for getPastPaymentDtls API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getPastPaymentDtls	|	src/test/resources/testdata/api/request/Drop2/bbps/getPastPaymentDtls_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getPastPaymentDtls_response.json	|	dbp-id_&_dbp-secret |					
					

#======================onClickServiceProvider=====================

		@TestCaseKey=UDB-T28829
 		Scenario Outline: Verify 200 success responce for onClickServiceProvider API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	cif	|
					|	bbps	|	/onClickServiceProvider	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProvider_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProvider_response.json	|	274309887 |      

		@TestCaseKey=UDB-T288291
 		Scenario Outline: Verify 400 error response for onClickServiceProvider API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> with updated  <attribute>  <value>
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |	value| cif	|
					|	bbps	|	/onClickServiceProvider	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProvider_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProvider_response.json	|	biller_account_id	| ABC	|	274309887 |
				
		@TestCaseKey=UDB-T288292
 		Scenario Outline: Verify 404 error responce for onClickServiceProvider API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	| cif	|
					|	bbps	|	/onClickServiceProvider/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProvider_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProvider_response.json	|	274309887 |      
	
		@TestCaseKey=UDB-T288293
 		Scenario Outline: Verify 500 error responce for onClickServiceProvider API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	| cif	|
					|	bbps	|	/onClickServiceProvider	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProvider_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProvider_response.json	|	dbp-id_&_dbp-secret |	274309887 |
					
#======================onClickUtilityGas=====================

		@TestCaseKey=UDB-T16879
 		Scenario Outline: Verify 200 success responce for onClickUtilityGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityGas_response.json	|      

		@TestCaseKey=UDB-T168791
 		Scenario Outline: Verify 400 error response for onClickUtilityGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickUtilityGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityGas_response.json	|	cif	|
				
		@TestCaseKey=UDB-T168792
 		Scenario Outline: Verify 404 error responce for onClickUtilityGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityGas/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityGas_response.json	|      
	
		@TestCaseKey=UDB-T168793
 		Scenario Outline: Verify 500 error responce for onClickUtilityGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickUtilityGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityGas_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityGas_response.json	|	dbp-id_&_dbp-secret |	

#======================onClickUtilityRental=====================

		@TestCaseKey=UDB-T16947
 		Scenario Outline: Verify 200 success responce for onClickUtilityRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityRental_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityRental_response.json	|      

		@TestCaseKey=UDB-T169471
 		Scenario Outline: Verify 400 error response for onClickUtilityRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickUtilityRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityRental_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityRental_response.json	|	cif	|
				
		@TestCaseKey=UDB-T169472
 		Scenario Outline: Verify 404 error responce for onClickUtilityRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityRental/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityRental_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityRental_response.json	|      
	
		@TestCaseKey=UDB-T169473
 		Scenario Outline: Verify 500 error responce for onClickUtilityRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickUtilityRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityRental_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityRental_response.json	|	dbp-id_&_dbp-secret |	
						
#======================onClickUtilityElectricity=====================

		@TestCaseKey=UDB-T16017
 		Scenario Outline: Verify 200 success responce for onClickUtilityElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityElectricity_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityElectricity_response.json	|      

		@TestCaseKey=UDB-T160171
 		Scenario Outline: Verify 400 error response for onClickUtilityElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickUtilityElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityElectricity_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityElectricity_response.json	|	cif	|
				
		@TestCaseKey=UDB-T160172
 		Scenario Outline: Verify 404 error responce for onClickUtilityElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityElectricity/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityElectricity_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityElectricity_response.json	|      
	
		@TestCaseKey=UDB-T160173
 		Scenario Outline: Verify 500 error responce for onClickUtilityElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickUtilityElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityElectricity_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityElectricity_response.json	|	dbp-id_&_dbp-secret |	
									
									
#======================onClickRechargeFastag=====================

		@TestCaseKey=UDB-T29840
 		Scenario Outline: Verify 200 success responce for onClickRechargeFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickRechargeFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeFastag_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeFastag_response.json	|      

		@TestCaseKey=UDB-T298401
 		Scenario Outline: Verify 400 error response for onClickRechargeFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickRechargeFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeFastag_response.json	|	cif	|
				
		@TestCaseKey=UDB-T298402
 		Scenario Outline: Verify 404 error responce for onClickRechargeFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickRechargeFastag/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeFastag_response.json	|      
	
		@TestCaseKey=UDB-T298403
 		Scenario Outline: Verify 500 error responce for onClickRechargeFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickRechargeFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeFastag_response.json	|	dbp-id_&_dbp-secret |	
									

#======================onClickProviderDetailContinueFastag=====================

		@TestCaseKey=UDB-T28912
 		Scenario Outline: Verify 200 success responce for onClickProviderDetailContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickProviderDetailContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueFastag_response.json	|      

		@TestCaseKey=UDB-T289121
 		Scenario Outline: Verify 400 error response for onClickProviderDetailContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickProviderDetailContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueFastag_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289122
 		Scenario Outline: Verify 404 error responce for onClickProviderDetailContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickProviderDetailContinueFastag/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueFastag_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueFastag_response.json	|      
	
		@TestCaseKey=UDB-T289123
 		Scenario Outline: Verify 500 error responce for onClickProviderDetailContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickProviderDetailContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueFastag_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueFastag_response.json	|	dbp-id_&_dbp-secret |	
									
#======================onClickTransactionPinContinueFastag=====================

		@TestCaseKey=UDB-T30068
 		Scenario Outline: Verify 200 success responce for onClickTransactionPinContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickTransactionPinContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueFastag_response.json	|      

		@TestCaseKey=UDB-T300681
 		Scenario Outline: Verify 400 error response for onClickTransactionPinContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickTransactionPinContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueFastag_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueFastag_response.json	|	cif	|
				
		@TestCaseKey=UDB-T300682
 		Scenario Outline: Verify 404 error responce for onClickTransactionPinContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickTransactionPinContinueFastag/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueFastag_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueFastag_response.json	|      
	
		@TestCaseKey=UDB-T300683
 		Scenario Outline: Verify 500 error responce for onClickTransactionPinContinueFastag API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickTransactionPinContinueFastag	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueFastag_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueFastag_response.json	|	dbp-id_&_dbp-secret |	
									
#======================onClickUtilityDTH=====================

		@TestCaseKey=UDB-T16952
 		Scenario Outline: Verify 200 success responce for onClickUtilityDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityDTH_response.json	|      

		@TestCaseKey=UDB-T169521
 		Scenario Outline: Verify 400 error response for onClickUtilityDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickUtilityDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityDTH_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityDTH_response.json	|	cif	|
				
		@TestCaseKey=UDB-T169522
 		Scenario Outline: Verify 404 error responce for onClickUtilityDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtilityDTH/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityDTH_response.json	|      
	
		@TestCaseKey=UDB-T169523
 		Scenario Outline: Verify 500 error responce for onClickUtilityDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickUtilityDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtilityDTH_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtilityDTH_response.json	|	dbp-id_&_dbp-secret |	
									
									
#======================onClickProviderDetailContinueDTH=====================

		@TestCaseKey=UDB-T28973
 		Scenario Outline: Verify 200 success responce for onClickProviderDetailContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickProviderDetailContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueDTH_response.json	|      

		@TestCaseKey=UDB-T289731
 		Scenario Outline: Verify 400 error response for onClickProviderDetailContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickProviderDetailContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueDTH_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289732
 		Scenario Outline: Verify 404 error responce for onClickProviderDetailContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickProviderDetailContinueDTH/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueDTH_response.json	|      
	
		@TestCaseKey=UDB-T289733
 		Scenario Outline: Verify 500 error responce for onClickProviderDetailContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickProviderDetailContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickProviderDetailContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickProviderDetailContinueDTH_response.json	|	dbp-id_&_dbp-secret |	

#======================onClickTransactionPinContinueDTH=====================

		@TestCaseKey=UDB-T28981
 		Scenario Outline: Verify 200 success responce for onClickTransactionPinContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickTransactionPinContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueDTH_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueDTH_response.json	|      

		@TestCaseKey=UDB-T289811
 		Scenario Outline: Verify 400 error response for onClickTransactionPinContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickTransactionPinContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueDTH_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289812
 		Scenario Outline: Verify 404 error responce for onClickTransactionPinContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickTransactionPinContinueDTH/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueDTH_response.json	|      
	
		@TestCaseKey=UDB-T289813
 		Scenario Outline: Verify 500 error responce for onClickTransactionPinContinueDTH API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickTransactionPinContinueDTH	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueDTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueDTH_response.json	|	dbp-id |	
																		
#======================onClickRechargeMobile=====================

		@TestCaseKey=UDB-C67
 		Scenario Outline: Verify 200 success responce for onClickRechargeMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickRecharge	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeMobile_response.json	|      

		@TestCaseKey=UDB-C671
 		Scenario Outline: Verify 400 error response for onClickRechargeMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickRecharge	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeMobile_response.json	|	cif	|
				
		@TestCaseKey=UDB-C672
 		Scenario Outline: Verify 404 error responce for onClickRechargeMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickRechargeMobile/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeMobile_response.json	|      
	
		@TestCaseKey=UDB-C673
 		Scenario Outline: Verify 500 error responce for onClickRechargeMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickRecharge	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickRechargeMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickRechargeMobile_response.json	|	dbp-id_&_dbp-secret |	
									
#======================onClickContact=====================

		@TestCaseKey=UDB-C68
 		Scenario Outline: Verify 200 success responce for onClickContact API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickContact	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickContact_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickContact_response.json	|      

		@TestCaseKey=UDB-C681
 		Scenario Outline: Verify 400 error response for onClickContact API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickContact	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickContact_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickContact_response.json	|	cif	|
				
		@TestCaseKey=UDB-C682
 		Scenario Outline: Verify 404 error responce for onClickContact API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickContact/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickContact_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickContact_response.json	|      
	
		@TestCaseKey=UDB-C683
 		Scenario Outline: Verify 500 error responce for onClickContact API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickContact	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickContact_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickContact_response.json	|	dbp-id_&_dbp-secret |	
									
									
#======================onClickTransactionPinContinueMobile=====================

		@TestCaseKey=UDB-C66
 		Scenario Outline: Verify 200 success responce for onClickTransactionPinContinueMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickTransactionPinContinue	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueMobile_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueMobile_response.json	|      

		@TestCaseKey=UDB-C661
 		Scenario Outline: Verify 400 error response for onClickTransactionPinContinueMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickTransactionPinContinue	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueMobile_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueMobile_response.json	|	cif	|
				
		@TestCaseKey=UDB-C662
 		Scenario Outline: Verify 404 error responce for onClickTransactionPinContinueMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickTransactionPinContinueMobile/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueMobile_response.json	|      
	
		@TestCaseKey=UDB-C663
 		Scenario Outline: Verify 500 error responce for onClickTransactionPinContinueMobile API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickTransactionPinContinue	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueMobile_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueMobile_response.json	|	dbp-id_&_dbp-secret |	
									
									
#======================onClickUserNotEnabledAutoPay=====================

		@TestCaseKey=UDB-C69
 		Scenario Outline: Verify 200 success responce for onClickUserNotEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUserNotEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUserNotEnabledAutoPay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUserNotEnabledAutoPay_response.json	|      

		@TestCaseKey=UDB-C691
 		Scenario Outline: Verify 400 error response for onClickUserNotEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickUserNotEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUserNotEnabledAutoPay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUserNotEnabledAutoPay_response.json	|	cif	|
				
		@TestCaseKey=UDB-C692
 		Scenario Outline: Verify 404 error responce for onClickUserNotEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickUserNotEnabledAutoPay/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUserNotEnabledAutoPay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUserNotEnabledAutoPay_response.json	|      
	
		@TestCaseKey=UDB-C693
 		Scenario Outline: Verify 500 error responce for onClickUserNotEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickUserNotEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUserNotEnabledAutoPay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUserNotEnabledAutoPay_response.json	|	dbp-id_&_dbp-secret |	
																																		
#======================userChangeNickName=====================

		@TestCaseKey=UDB-T28711
 		Scenario Outline: Verify 200 success responce for userChangeNickName API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/userChangeNickName	|	src/test/resources/testdata/api/request/Drop2/bbps/userChangeNickName_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userChangeNickName_response.json	|      

		@TestCaseKey=UDB-T287111
 		Scenario Outline: Verify 400 error response for userChangeNickName API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/userChangeNickName	|	src/test/resources/testdata/api/request/Drop2/bbps/userChangeNickName_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userChangeNickName_response.json	|	cif	|
				
		@TestCaseKey=UDB-T287112
 		Scenario Outline: Verify 404 error responce for userChangeNickName API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/userChangeNickName/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/userChangeNickName_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userChangeNickName_response.json	|      
	
		@TestCaseKey=UDB-T287113
 		Scenario Outline: Verify 500 error responce for userChangeNickName API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/userChangeNickName	|	src/test/resources/testdata/api/request/Drop2/bbps/userChangeNickName_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userChangeNickName_response.json	|	dbp-id_&_dbp-secret |	
																																												

#======================onClickPayNowBills=====================

		@TestCaseKey=UDB-T28693
 		Scenario Outline: Verify 200 success responce for onClickPayNowBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickPayNowBills	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayNowBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayNowBills_response.json	|      

		@TestCaseKey=UDB-T286931
 		Scenario Outline: Verify 400 error response for onClickPayNowBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickPayNowBills	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayNowBills_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayNowBills_response.json	|	cif_&_consumer_number_&_amount_&_billerId_&_account	|
				
		@TestCaseKey=UDB-T286932
 		Scenario Outline: Verify 404 error responce for onClickPayNowBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickPayNowBills/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayNowBills_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayNowBills_response.json	|      
	
		@TestCaseKey=UDB-T286933
 		Scenario Outline: Verify 500 error responce for onClickPayNowBills API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickPayNowBills	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayNowBills_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayNowBills_response.json	|	dbp-id_&_dbp-secret |	
									

#======================userContinueAutopay=====================

		@TestCaseKey=UDB-T28687
 		Scenario Outline: Verify 200 success responce for userContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/userContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/userContinueAutopay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userContinueAutopay_response.json	|      

		@TestCaseKey=UDB-T286871
 		Scenario Outline: Verify 400 error response for userContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/userContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/userContinueAutopay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userContinueAutopay_response.json	|	cif	|
				
		@TestCaseKey=UDB-T286872
 		Scenario Outline: Verify 404 error responce for userContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/userContinueAutopay/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/userContinueAutopay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userContinueAutopay_response.json	|      
	
		@TestCaseKey=UDB-T286873
 		Scenario Outline: Verify 500 error responce for userContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/userContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/userContinueAutopay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userContinueAutopay_response.json	|	dbp-id |	

#======================userEnabledAutoPay=====================

		@TestCaseKey=UDB-C65
 		Scenario Outline: Verify 200 success responce for userEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/userEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/userEnabledAutoPay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userEnabledAutoPay_response.json	|      

		@TestCaseKey=UDB-C651
 		Scenario Outline: Verify 400 error response for userEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/userEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/userEnabledAutoPay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userEnabledAutoPay_response.json	|	cif	|
				
		@TestCaseKey=UDB-C652
 		Scenario Outline: Verify 404 error responce for userEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/userEnabledAutoPay/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/userEnabledAutoPay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userEnabledAutoPay_response.json	|      
	
		@TestCaseKey=UDB-C653
 		Scenario Outline: Verify 500 error responce for userEnabledAutoPay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/userEnabledAutoPay	|	src/test/resources/testdata/api/request/Drop2/bbps/userEnabledAutoPay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userEnabledAutoPay_response.json	|	dbp-id |	
									
									
#======================onClickServiceProviderGas=====================

		@TestCaseKey=UDB-T28834
 		Scenario Outline: Verify 200 success responce for onClickServiceProviderGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderGas_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderGas_response.json	|      

		@TestCaseKey=UDB-T288341
 		Scenario Outline: Verify 400 error response for onClickServiceProviderGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickServiceProviderGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderGas_response.json	|	cif	|
				
		@TestCaseKey=UDB-T288342
 		Scenario Outline: Verify 404 error responce for onClickServiceProviderGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderGas/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderGas_response.json	|      
	
		@TestCaseKey=UDB-T288343
 		Scenario Outline: Verify 500 error responce for onClickServiceProviderGas API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickServiceProviderGas	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderGas_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderGas_response.json	|	dbp-id |	
									
									
#======================onClickServiceProviderRental=====================

		@TestCaseKey=UDB-T28926
 		Scenario Outline: Verify 200 success responce for onClickServiceProviderRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderRental_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderRental_response.json	|      

		@TestCaseKey=UDB-T289261
 		Scenario Outline: Verify 400 error response for onClickServiceProviderRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickServiceProviderRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderRental_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderRental_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289262
 		Scenario Outline: Verify 404 error responce for onClickServiceProviderRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderRental/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderRental_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderRental_response.json	|      
	
		@TestCaseKey=UDB-T289263
 		Scenario Outline: Verify 500 error responce for onClickServiceProviderRental API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickServiceProviderRental	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderRental_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderRental_response.json	|	dbp-id |	
									

#======================onClickServiceProviderElectricity=====================

		@TestCaseKey=UDB-T28930
 		Scenario Outline: Verify 200 success responce for onClickServiceProviderElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderElectricity_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderElectricity_response.json	|      

		@TestCaseKey=UDB-T289301
 		Scenario Outline: Verify 400 error response for onClickServiceProviderElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickServiceProviderElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderElectricity_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderElectricity_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289302
 		Scenario Outline: Verify 404 error responce for onClickServiceProviderElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickServiceProviderElectricity/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderElectricity_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderElectricity_response.json	|      
	
		@TestCaseKey=UDB-T289303
 		Scenario Outline: Verify 500 error responce for onClickServiceProviderElectricity API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onClickServiceProviderElectricity	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickServiceProviderElectricity_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickServiceProviderElectricity_response.json	|	dbp-id |	
									

#======================getBBPSDashData=====================

		@TestCaseKey=UDB-T28706
 		Scenario Outline: Verify 200 success responce for getBBPSDashData API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getBBPSDashData	|	src/test/resources/testdata/api/request/Drop2/bbps/getBBPSDashData_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getBBPSDashData_response.json	|      

		@TestCaseKey=UDB-T287061
 		Scenario Outline: Verify 400 error response for getBBPSDashData API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/getBBPSDashData	|	src/test/resources/testdata/api/request/Drop2/bbps/getBBPSDashData_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getBBPSDashData_response.json	|	accountSessionId_&_customerId	|
				
		@TestCaseKey=UDB-T287062
 		Scenario Outline: Verify 404 error responce for getBBPSDashData API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getBBPSDashData/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getBBPSDashData_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getBBPSDashData_response.json	|      
	
		@TestCaseKey=UDB-T287063
 		Scenario Outline: Verify 500 error responce for getBBPSDashData API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/getBBPSDashData	|	src/test/resources/testdata/api/request/Drop2/bbps/getBBPSDashData_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getBBPSDashData_response.json	|	dbp-id |	
									
#======================onFilterPastPayment=====================

		@TestCaseKey=UDB-T28706
 		Scenario Outline: Verify 200 success responce for onFilterPastPayment API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onFilterPastPayment	|	src/test/resources/testdata/api/request/Drop2/bbps/onFilterPastPayment_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onFilterPastPayment_response.json	|      

		@TestCaseKey=UDB-T289211
 		Scenario Outline: Verify 400 error response for onFilterPastPayment API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onFilterPastPayment	|	src/test/resources/testdata/api/request/Drop2/bbps/onFilterPastPayment_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onFilterPastPayment_response.json	|	cif	|
				
		@TestCaseKey=UDB-T289212
 		Scenario Outline: Verify 404 error responce for onFilterPastPayment API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onFilterPastPayment/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onFilterPastPayment_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onFilterPastPayment_response.json	|      
	
		@TestCaseKey=UDB-T289213
 		Scenario Outline: Verify 500 error responce for onFilterPastPayment API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/onFilterPastPayment	|	src/test/resources/testdata/api/request/Drop2/bbps/onFilterPastPayment_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onFilterPastPayment_response.json	|	dbp-id |	
									
#======================onClickTransactionPinContinueAutopay=====================

		@TestCaseKey=UDB-T28918
 		Scenario Outline: Verify 200 success responce for onClickTransactionPinContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	cif	|
					|	bbps	|	/onClickTransactionPinContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueAutopay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueAutopay_response.json	|	2002605586 |      

		@TestCaseKey=UDB-T289181
 		Scenario Outline: Verify 400 error response for onClickTransactionPinContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |	cif	|
					|	bbps	|	/onClickTransactionPinContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueAutopay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueAutopay_response.json	|	validationid	|	2002605586 |
				
		@TestCaseKey=UDB-T289182
 		Scenario Outline: Verify 404 error responce for onClickTransactionPinContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	| cif	|
					|	bbps	|	/onClickTransactionPinContinueAutopay/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueAutopay_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueAutopay_response.json	|	2002605586 |      
	
		@TestCaseKey=UDB-T289183
 		Scenario Outline: Verify 500 error responce for onClickTransactionPinContinueAutopay API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickTransactionPinContinueAutopay	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickTransactionPinContinueAutopay_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickTransactionPinContinueAutopay_response.json	|	dbp-id |	
									
#======================onClickPayAgain=====================

		@TestCaseKey=UDB-T29692
 		Scenario Outline: Verify 200 success responce for onClickPayAgain API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickPayAgain	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayAgain_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayAgain_response.json	|      

		@TestCaseKey=UDB-T296921
 		Scenario Outline: Verify 400 error response for onClickPayAgain API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/onClickPayAgain	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayAgain_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayAgain_response.json	|	cif	|
				
		@TestCaseKey=UDB-T296922
 		Scenario Outline: Verify 404 error responce for onClickPayAgain API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickPayAgain/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayAgain_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayAgain_response.json	|      
	
		@TestCaseKey=UDB-T289183
 		Scenario Outline: Verify 500 error responce for onClickPayAgain API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickPayAgain	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickPayAgain_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickPayAgain_response.json	|	dbp-id |	
									

#======================raiseComplaint=====================

		@TestCaseKey=UDB-T28699
 		Scenario Outline: Verify 200 success responce for raiseComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/raiseComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/raiseComplaint_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/raiseComplaint_response.json	|      

		@TestCaseKey=UDB-T286991
 		Scenario Outline: Verify 400 error response for raiseComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/raiseComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/raiseComplaint_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/raiseComplaint_response.json	|	cif	|
				
		@TestCaseKey=UDB-T286992
 		Scenario Outline: Verify 404 error responce for raiseComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/raiseComplaint/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/raiseComplaint_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/raiseComplaint_response.json	|      
	
		@TestCaseKey=UDB-T286993
 		Scenario Outline: Verify 500 error responce for raiseComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/raiseComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/raiseComplaint_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/raiseComplaint_response.json	|	dbp-id |	
	
#======================trackComplaint=====================

		@TestCaseKey=UDB-T30065
 		Scenario Outline: Verify 200 success responce for trackComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/trackComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/trackComplaint_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/trackComplaint_response.json	|      

		@TestCaseKey=UDB-T300651
 		Scenario Outline: Verify 400 error response for trackComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/trackComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/trackComplaint_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/trackComplaint_response.json	|	cif	|
				
		@TestCaseKey=UDB-T300652
 		Scenario Outline: Verify 404 error responce for trackComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/trackComplaint/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/trackComplaint_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/trackComplaint_response.json	|      
	
		@TestCaseKey=UDB-T300653
 		Scenario Outline: Verify 500 error responce for trackComplaint API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/trackComplaint	|	src/test/resources/testdata/api/request/Drop2/bbps/trackComplaint_request.json	|	null | null | null |/test/resources/testdata/api/response/expected/Drop2/bbps/trackComplaint_response.json	|	dbp-id |	
									

#======================onClickUtility=====================

		@TestCaseKey=UDB-T16002
 		Scenario Outline: Verify 200 success responce for onClickUtility API, utility type is LOAN.
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_response.json	|      

		@TestCaseKey=UDB-T160021
 		Scenario Outline: Verify 200 success responce for onClickUtility API, utility type is DTH.
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_DTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_DTH_response.json	|      

		@TestCaseKey=UDB-T160022
 		Scenario Outline: Verify 200 success responce for onClickUtility API, utility type is Electricity.
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_DTH_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_DTH_response.json	|      

		@TestCaseKey=UDB-T160023
 		Scenario Outline: Verify 400 error response for onClickUtility API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_response.json	|	cif	|
				
		@TestCaseKey=UDB-T160024
 		Scenario Outline: Verify 404 error responce for onClickUtility API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/onClickUtility/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_response.json	|      
	
		@TestCaseKey=UDB-T160025
 		Scenario Outline: Verify 500 error responce for onClickUtility API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|
					|	bbps	|	/onClickUtility	|	src/test/resources/testdata/api/request/Drop2/bbps/onClickUtility_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/onClickUtility_response.json	|	dbp-id |	
									
#======================userClickRemoveAccount=====================

		@TestCaseKey=UDB-C70
 		Scenario Outline: Verify 200 success responce for userClickRemoveAccount API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|
					|	bbps	|	/userClickRemoveAccount	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|      

		@TestCaseKey=UDB-C701
 		Scenario Outline: Verify 400 error response for userClickRemoveAccount API, remove attribute cif
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/userClickRemoveAccount	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|	cif	|
				
		@TestCaseKey=UDB-C702
 		Scenario Outline: Verify 400 error response for userClickRemoveAccount API, remove attribute billerAccountId
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/userClickRemoveAccount	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|	billerAccountId	|
						
		@TestCaseKey=UDB-C703
 		Scenario Outline: Verify 404 error responce for userClickRemoveAccount API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/userClickRemoveAccount/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|      
	
		@TestCaseKey=UDB-C704
 		Scenario Outline: Verify 500 error responce for userClickRemoveAccount API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/userClickRemoveAccount	|	src/test/resources/testdata/api/request/Drop2/bbps/userClickRemoveAccount_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/userClickRemoveAccount_response.json	|	dbp-id |	
  
#======================getAccountList=====================

		@TestCaseKey=UDB-C71
 		Scenario Outline: Verify 200 success responce for getAccountList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getAccountList	|	src/test/resources/testdata/api/request/Drop2/bbps/getAccountList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAccountList_response.json	|      

		@TestCaseKey=UDB-C711
 		Scenario Outline: Verify 400 error response for getAccountList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/getAccountList	|	src/test/resources/testdata/api/request/Drop2/bbps/getAccountList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAccountList_response.json	|	cif	|
				
		@TestCaseKey=UDB-C712
 		Scenario Outline: Verify 404 error responce for getAccountList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getAccountList/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getAccountList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getAccountList_response.json	|      
	
		@TestCaseKey=UDB-C713
 		Scenario Outline: Verify 500 error responce for getAccountList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getAccountList	|	src/test/resources/testdata/api/request/Drop2/bbps/getAccountList_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getAccountList_response.json	|	dbp-id |	
									
#======================linkUserWithBiller=====================

		@TestCaseKey=UDB-T15972
 		Scenario Outline: Verify 200 success responce for linkUserWithBiller API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	cif	|
					|	bbps	|	/linkUserWithBiller	|	src/test/resources/testdata/api/request/Drop2/bbps/linkUserWithBiller_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/linkUserWithBiller_response.json	|	2002605586 |      

		@TestCaseKey=UDB-T159721
 		Scenario Outline: Verify 400 error response for linkUserWithBiller API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |	cif	|
					|	bbps	|	/linkUserWithBiller	|	src/test/resources/testdata/api/request/Drop2/bbps/linkUserWithBiller_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/linkUserWithBiller_response.json	|	billerid	|	2002605586	|
				
		@TestCaseKey=UDB-T159722
 		Scenario Outline: Verify 404 error responce for linkUserWithBiller API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  	Then the endpoint <endpoint> with cif <cif>
  	Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	cif	|
					|	bbps	|	/linkUserWithBiller/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/linkUserWithBiller_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/linkUserWithBiller_response.json	|	2002605586	|      
	
		@TestCaseKey=UDB-T159723
 		Scenario Outline: Verify 500 error responce for linkUserWithBiller API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then the endpoint <endpoint> with cif <cif>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	missingHeader	|	cif	|
					|	bbps	|	/linkUserWithBiller	|	src/test/resources/testdata/api/request/Drop2/bbps/linkUserWithBiller_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/linkUserWithBiller_response.json	|	dbp-id |	2002605586	|	
									
#======================getComplaintReasons=====================

		@TestCaseKey=UDB-C72
 		Scenario Outline: Verify 200 success responce for getComplaintReasons API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getComplaintReasons	|	src/test/resources/testdata/api/request/Drop2/bbps/getComplaintReasons_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getComplaintReasons_response.json	|      

		@TestCaseKey=UDB-C721
 		Scenario Outline: Verify 400 error response for getComplaintReasons API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	attribute |
					|	bbps	|	/getComplaintReasons	|	src/test/resources/testdata/api/request/Drop2/bbps/getComplaintReasons_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getComplaintReasons_response.json	|	cif	|
				
		@TestCaseKey=UDB-C722
 		Scenario Outline: Verify 404 error responce for getComplaintReasons API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getComplaintReasons/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getComplaintReasons_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getComplaintReasons_response.json	|      
	
		@TestCaseKey=UDB-C723
 		Scenario Outline: Verify 500 error responce for getComplaintReasons API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getComplaintReasons	|	src/test/resources/testdata/api/request/Drop2/bbps/getComplaintReasons_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getComplaintReasons_response.json	|	dbp-id |	
									
#======================getStateList=====================

		@TestCaseKey=UDB-C73
 		Scenario Outline: Verify 200 success responce for getStateList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getStateList	|	src/test/resources/testdata/api/request/Drop2/bbps/getStateList_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getStateList_response.json	|      

		@TestCaseKey=UDB-C731
 		Scenario Outline: Verify 400 error response for getStateList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/getStateList	|	src/test/resources/testdata/api/request/Drop2/bbps/getStateList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getStateList_response.json	|	cif	|
				
		@TestCaseKey=UDB-C732
 		Scenario Outline: Verify 404 error responce for getStateList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getStateList/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getStateList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getStateList_response.json	|      
	
		@TestCaseKey=UDB-C733
 		Scenario Outline: Verify 500 error responce for getStateList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getStateList	|	src/test/resources/testdata/api/request/Drop2/bbps/getStateList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getStateList_response.json	|	dbp-id |	
								
#======================getCityList=====================

		@TestCaseKey=UDB-C74
 		Scenario Outline: Verify 200 success responce for getCityList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 200
  		Then user verifies json from <responseBody>.
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getCityList	|	src/test/resources/testdata/api/request/Drop2/bbps/getCityList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getCityList_response.json	|      

		@TestCaseKey=UDB-C741
 		Scenario Outline: Verify 400 error response for getCityList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then trigger a post request with <requestBody> and remove attribute <attribute> 
  		Then user verifies that status is 400
  		Then user verifies message 400 from response 
  
  			Examples:
					|	service |	endpoint |	requestBody	|	requestField   |responsefield | filename |responseBody	|	attribute |
					|	bbps	|	/getCityList	|	src/test/resources/testdata/api/request/Drop2/bbps/getCityList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getCityList_response.json	|	cif	|
				
		@TestCaseKey=UDB-C742
 		Scenario Outline: Verify 404 error responce for getCityList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user triggers a post request with <requestBody>
  		Then user verifies that status is 404
  		Then user verifies message 404 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|
					|	bbps	|	/getCityList/abc	|	src/test/resources/testdata/api/request/Drop2/bbps/getCityList_request.json	|	null | null | null |src/test/resources/testdata/api/response/expected/Drop2/bbps/getCityList_response.json	|      
	
		@TestCaseKey=UDB-C743
 		Scenario Outline: Verify 500 error responce for getCityList API
  		Given user sets the environment of endpoint
  		Given user set the basepath to <service>
  		Then set the endpoint <endpoint>
  		Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
  		Then user trigger a post request with <requestBody> and exclude header parameter <missingHeader>
  		Then user verifies that status is 500
  		Then user verifies message 500 from response
  
  			Examples:
					|	service |	endpoint |	requestBody	|requestField   |responsefield | filename |	responseBody	|	missingHeader	|
					|	bbps	|	/getCityList	|	src/test/resources/testdata/api/request/Drop2/bbps/getCityList_request.json	|null | null | null |	src/test/resources/testdata/api/response/expected/Drop2/bbps/getCityList_response.json	|	dbp-id |	
	
																																																																																																																																																																												      											      																				      											      