# Feature: Govt Scheme API
# Author: Randeep Kaur
# Description: Smoke Testing : Govt Scheme API
# Test Environment: SIT
# Preconditions: Govt Scheme API should be up and running


Feature: Regression of GovtScheme Mobile
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for drop2/GovtScheme


@TestCaseKey=UDB-T15009
  Scenario Outline: Verify showPMGovtSchmDetails API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint                | requestBody 																																						      |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /showPMGovtSchmDetails/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\showPMGovtSchmDetails.json | null | null | null | null |  

@TestCaseKey=UDB-T15007
  Scenario Outline: Verify showPMGovtSchmDetails api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400
	
     Examples: 
      | service            | endpoint               | requestBody 																																						           |requestField   |responsefield      | filename       | responseBody                    | 
      | govt_scheme_mobile | /showPMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\showPMGovtSchmDetails_noCif.json | null | null | null | null | 
  

@TestCaseKey=UDB-T15040 
  Scenario Outline: Verify savePMGovtSchmDetails API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint                | requestBody																																							    |requestField   |responsefield      | filename       | responseBody                    | 
      | govt_scheme_mobile | /savePMGovtSchmDetails/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\savePMGovtSchmDetails.json | null | null | null | null | 

@TestCaseKey=UDB-T15038
	Scenario Outline: Verify savePMGovtSchmDetails api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400

	    Examples: 
      | service            | endpoint               | requestBody																																							  	  |requestField   |responsefield  | filename       | responseBody                    |
      | govt_scheme_mobile | /savePMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\savePMGovtSchmDetails_noCif.json | null | null | null | null |
	  
@TestCaseKey=UDB-T14990
  Scenario Outline: Verify retrieveEnrollmentDetails API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint                    | requestBody 																																										 |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /retrieveEnrollmentDetails/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\retrieveEnrollmentDetails.json | null | null | null | null | 

@TestCaseKey=UDB-T14987
	Scenario Outline: Verify retrieveEnrollmentDetails api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400
	
		Examples: 
      | service            | endpoint                   | requestBody 																																										 |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /retrieveEnrollmentDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\retrieveEnrollmentDetails_noCif.json | null | null | null | null | 
		
@TestCaseKey=UDB-T15073
  Scenario Outline: Verify premiumDeduction API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint           | requestBody 																																					 |requestField   |responsefield  | filename  | responseBody                    | 
      | govt_scheme_mobile | /premiumDeduction/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\premiumDeduction.json | null | null | null | null | 

@TestCaseKey=UDB-T15071
	Scenario Outline: Verify premiumDeduction api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400
		
    Examples: 
      | service            | endpoint          | requestBody 																																					  |requestField   |responsefield  | filename  | responseBody                    | 
      | govt_scheme_mobile | /premiumDeduction | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\premiumDeduction_noCif.json | null | null | null | null | 
	
@TestCaseKey=UDB-T15602
  Scenario Outline: Verify getPMSchemeDetails API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint             | requestBody 																																						 |requestField   |responsefield | filename  | responseBody                    |
      | govt_scheme_mobile | /getPMSchemeDetails/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\getPMSchemeDetails.json | null | null | null | null | 

@TestCaseKey=UDB-T15600
	Scenario Outline: Verify getPMSchemeDetails api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400
	  
	  Examples: 
      | service            | endpoint            | requestBody 																																							 |requestField   |responsefield  | filename  | responseBody                    | 
      | govt_scheme_mobile | /getPMSchemeDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\getPMSchemeDetails_noCif.json | null | null | null | null | 
	 
@TestCaseKey=UDB-T15053
  Scenario Outline: Verify downloadCOI API returns 404 response for invalid endpoint
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 404

    Examples: 
      | service            | endpoint      | requestBody																																			  |requestField   |responsefield  | filename  | responseBody                    |
      | govt_scheme_mobile | /downloadCOI/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\downloadCOI.json | null | null | null | null | 

@TestCaseKey=UDB-T15051
	Scenario Outline: Verify downloadCOI api returns 400 response with missing Mandatory cif field
		Given user sets the environment of endpoint
		Given user set the basepath to <service>
		Then set the endpoint <endpoint>
		Then user triggers a post request with <requestBody>
		Then user verifies that status is 400

   Examples: 
      | service            | endpoint     | requestBody										  																								     	   |requestField   |responsefield   | filename   | responseBody                    |
      | govt_scheme_mobile | /downloadCOI | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\downloadCOI_noCif.json | null | null | null | null |

#@TestCaseKey=UDB-T15371
 # Scenario Outline: Verify confirmAndPay API returns 404 response for invalid endpoint
 #   Given user sets the environment of endpoint
 #   Given user set the basepath to <service>
 #   Then set the endpoint <endpoint>
 #   Then user triggers a post request with <requestBody>
 #   Then user verifies that status is 404

 #   Examples: 
 #     | service            | endpoint        | requestBody																																			  | 
 #     | govt_scheme_mobile | /confirmAndPay/ | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\confirmAndPay.json | null | null | null | null | 

#@TestCaseKey=UDB-T15368
#	Scenario Outline: Verify confirmAndPay api returns 400 response with missing Mandatory cif field
#		Given user sets the environment of endpoint
#		Given user set the basepath to <service>
#		Then set the endpoint <endpoint>
#		Then user triggers a post request with <requestBody>
#		Then user verifies that status is 400

#   Examples: 
 #     | service            | endpoint       | requestBody																																			  | 
 #     | govt_scheme_mobile | /confirmAndPay | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\confirmAndPay_noCif.json | null | null | null | null | 



# Author: Nalagatla Anupama

Scenario Outline: Verify that API is not allowing user to showPMGovtSchmDetails without schemeCode
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noSchmCode.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noSchmCode.json|

Scenario Outline: Verify that API is not allowing user to showPMGovtSchmDetails without channelId
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noChannelId.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noChannelId.json|

Scenario Outline: Verify that API doesn't allow user to showPMGovtSchmDetails with invalid cif
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 404
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidCif.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidCif.json|
            
Scenario Outline: Verify that API doesn't allow user to showPMGovtSchmDetails with invalid schemeCode
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidSchmCode.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidSchmCode.json|

Scenario Outline: Verify that API doesn't allow user to showPMGovtSchmDetails with invalid channelId
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidChannelId.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_invalidChannelId.json|

Scenario Outline: Verify that API is not allowing to use existing account/cif
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchemeDetails_existingAcct.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchemeDetails_existingAcct.json|

Scenario Outline: Verify that API is not allowing to use account/cif having KYC issues
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_cifKYCIssues.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_cifKYCIssues.json|

Scenario Outline: Verify that API is not allowing to use Inactive Savings/Dormant Account
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_inactiveSavingsAcct.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_inactiveSavingsAcct.json|
 
Scenario Outline: Verify that API is not allowing to use ineligible account/cif
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 400
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_ineligibleAcctOrCif.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_insufficientBal.json|

# data dependency
#Scenario Outline: Verify that API is not allowing for missing date of birth
      #Given user sets the environment of endpoint
      #Given user set the basepath to <service>
      #Then set the endpoint <endpoint>
      #Then user triggers a post request with <requestBody>
      #Then user verifies that status is 400
      #Then user verifies json from <responseBody>
      #Examples:
      #| service        | endpoint         | requestBody   | responseBody                    |
      #| govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_missingDob.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_missingDob.json|

#Scenario Outline: Verify that API is not allowing to use minor or senior citizen
      #Given user sets the environment of endpoint
      #Given user set the basepath to <service>
      #Then set the endpoint <endpoint>
      #Then user triggers a post request with <requestBody>
      #Then user verifies that status is 400
      #Then user verifies json from <responseBody>
      #Examples:
      #| service        | endpoint         | requestBody   | responseBody                    |
      #| govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noMinorOrCitizen.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noMinorOrCitizen.json|
#
#Scenario Outline: Verify that API is not allowing to use account with insufficient balance /not have minimum balance.
      #Given user sets the environment of endpoint
      #Given user set the basepath to <service>
      #Then set the endpoint <endpoint>
      #Then user triggers a post request with <requestBody>
      #Then user verifies that status is 400
      #Then user verifies json from <responseBody>
      #Examples:
      #| service        | endpoint         | requestBody   | responseBody                    |
      #| govt_scheme_mobile |/showPMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/showPMGovtSchmDetails_insufficientBal.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/showPMGovtSchmDetails_noMinorOrCitizen.json|
##                     



Scenario Outline: Verify savePMGovtSchmDetails API returns 200 response with Mandatory fields only
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 200
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/savePMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/savePMGovtSchmDetails_withMandatoryFields.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/savePMGovtSchmDetails_withMandatoryFields.json|

Scenario Outline:Verify savePMGovtSchmDetails API returns 200 response with schemeCode PMSBY
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint               | requestBody																																								  | responseBody |
      | govt_scheme_mobile | /savePMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\savePMGovtSchmDetails_withSchmCodePMSBY.json | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\savePMGovtSchmDetails_withSchmCodePMSBY.json |
 
Scenario Outline:Verify savePMGovtSchmDetails API returns 200 response with all channel id's
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint               | requestBody																																								  | responseBody |
      | govt_scheme_mobile | /savePMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\savePMGovtSchmDetails_withAllChannelIds.json | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\savePMGovtSchmDetails_withAllChannelIds.json |
      
Scenario Outline: Verify savePMGovtSchmDetails API with random value for accountNumber field
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 200
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/savePMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/savePMGovtSchmDetails_randomAcctNum.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/savePMGovtSchmDetails_randomAcctNum.json|
                         
Scenario Outline: Verify savePMGovtSchmDetails API with random value for userId
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 200
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/savePMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/savePMGovtSchmDetails_randomUserId.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/savePMGovtSchmDetails_randomUserId.json|

Scenario Outline: Verify savePMGovtSchmDetails API with request body contains invalid value for non mandatory field
      Given user sets the environment of endpoint
      Given user set the basepath to <service>
      Then set the endpoint <endpoint>
      Then user triggers a post request with <requestBody>
      Then user verifies that status is 200
      Then user verifies json from <responseBody>
      Examples:
      | service        | endpoint         | requestBody   | responseBody                    |
      | govt_scheme_mobile |/savePMGovtSchmDetails |/src/test/resources/testdata/api/request/Drop2/govtscheme/mobile/savePMGovtSchmDetails_invalidValueforNonMandatoryField.json|src/test/resources/testdata/api/response/expected/Drop2/govtscheme/mobile/savePMGovtSchmDetails_invalidvalueforNonmandatoryfield.json|
                                                  



# Author: Randeep Kaur

 		@TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>    
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                         | responseBody                                            |
      | govt_scheme_mobile |/retrieveEnrollmentDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails.json|


    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>    
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/retrieveEnrollmentDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Response_Regression_Mandatory_Field_Invalid_400.json|


    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/retrieveEnrollmentDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|


   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                             | responseBody                                                                                           |
      | govt_scheme_mobile |/retrieveEnrollmentDetails   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Response_Regression_Request_Body_Blank_400.json|

   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody> 
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service     	     | endpoint   | requestBody |  requestField  | responsefield  | filename                                                                                | responseBody                                                                                           |
      | govt_scheme_mobile |/retrieveEnrollmentDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Response_Regression_Invalid_Json_400.json|
 
   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/retrieveEnrollmentDetails" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                            | responseBody                                                  |
      | govt_scheme_mobile |/retrieveEnrollmentDetails   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null| \src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_retrieveEnrollmentDetails_Response_Regression_Mandatory_Field_Blank_400.json|
 

		@TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                         | responseBody                                            |
      | govt_scheme_mobile |/premiumDeduction |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction.json|

# Edge premiumDeduction

    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 404 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/premiumDeduction |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction_Response_Regression_Mandatory_Field_Invalid_400.json|

    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/premiumDeduction |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|

   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/premiumDeduction   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction_Response_Regression_Request_Body_Blank_400.json|
  

   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                    | responseBody                                                                                           |
      | govt_scheme_mobile |/premiumDeduction |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction_Response_Regression_Invalid_Json_400.json|
 

   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/premiumDeduction" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                            | responseBody                                                  |
      | govt_scheme_mobile |/premiumDeduction   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_premiumDeduction_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_premiumDeduction_Response_Regression_Mandatory_Field_Blank_400.json|
 

 		@TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                         | responseBody                                            |
      | govt_scheme_mobile |/getPMSchemeDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_getPMSchemeDetails.json|
   
    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/getPMSchemeDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null | \src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Response_Regression_Mandatory_Field_Invalid_400.json|

# Edge getPMSchemeDetails

    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/getPMSchemeDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\mobile\GS_getPMSchemeDetails_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|

   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/getPMSchemeDetails   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Response_Regression_Request_Body_Blank_400.json|


   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service      		   | endpoint   | requestBody |  requestField  | responsefield  | filename                                                                                                                    | responseBody                                                                                           |
      | govt_scheme_mobile |/getPMSchemeDetails |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Response_Regression_Invalid_Json_400.json|
  
   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/getPMSchemeDetails" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename> 
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service    		     | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                            | responseBody                                                  |
      | govt_scheme_mobile |/getPMSchemeDetails   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null|\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_getPMSchemeDetails_Response_Regression_Mandatory_Field_Blank_400.json|


 
  
 		@TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 200 with Only Mandatory fields
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>  
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                         | responseBody                                            |
      | govt_scheme_mobile |/downloadCOI | src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI.json|null|null|null | src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\GS_downloadCOI.json|
  
 # Edge downloadCOI
 
    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 400 with Mandatory fields are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service      		  | endpoint   |  requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/downloadCOI |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI_Request_Regression_Mandatory_Field_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_downloadCOI_Response_Regression_Mandatory_Field_Invalid_400.json|
  
    @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 400 with Mandatory tags are invalid in request body
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>  
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/downloadCOI |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI_Request_Regression_Mandatory_Field_Tag_Invalid_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_downloadCOI_Response_Regression_Mandatory_Field_Tag_Invalid_400.json|
   
   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 400 if Request body is blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>   
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                          | responseBody                                                                                           |
      | govt_scheme_mobile |/downloadCOI   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI_Request_Regression_Request_Body_Blank_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_downloadCOI_Response_Regression_Request_Body_Blank_400.json|
 
 @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 400 if Request body is invalid JSON
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service       		 | endpoint   | requestBody |  requestField  | responsefield  | filename                                                                                                                    | responseBody                                                                                           |
      | govt_scheme_mobile |/downloadCOI |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI_Request_Regression_Invalid_Json_400.json|null|null|null |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_downloadCOI_Response_Regression_Invalid_Json_400.json|
  
   @TestCaseKey=UDB-	 @Regression
  Scenario Outline: Verify "/downloadCOI" API "POST" Method for Status code 400 if Mandatory Field is Blank
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint> 
    Then user triggers a post request with <requestBody>
    Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
    Then user verifies that status is 400
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint    | requestBody |  requestField  | responsefield  | filename                                                                                                                            | responseBody                                                  |
      | govt_scheme_mobile |/downloadCOI   |\src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\GS_downloadCOI_Request_Regression_Mandatory_Field_Blank_400.json|null|null|null  |\src\test\resources\testdata\api\response\Expected\Drop2\govtscheme\mobile\GS_downloadCOI_Response_Regression_Mandatory_Field_Blank_400.json|
 

 
 

