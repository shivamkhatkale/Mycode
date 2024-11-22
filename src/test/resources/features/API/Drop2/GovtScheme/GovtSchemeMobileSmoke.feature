# Feature: Govt Scheme API
# Author: Randeep Kaur
# Description: Smoke Testing : Govt Scheme API
# Test Environment: SIT
# Preconditions: Govt Scheme API should be up and running


Feature: Smoke of GovtScheme Mobile
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for drop2/GovtScheme

  @TestCaseKey=UDB-T15003
  Scenario Outline: Verify showPMGovtSchmDetails API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint               | requestBody 																																						    |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /showPMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\showPMGovtSchmDetails.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\showPMGovtSchmDetails.json|

 @TestCaseKey=UDB-T15035
  Scenario Outline: Verify savePMGovtSchmDetails API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint               | requestBody																																								    |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /savePMGovtSchmDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\savePMGovtSchmDetails.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\savePMGovtSchmDetails.json |

@TestCaseKey=UDB-T14986
  Scenario Outline: Verify retrieveEnrollmentDetails API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint                   | requestBody 																																										  |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /retrieveEnrollmentDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\retrieveEnrollmentDetails.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\retrieveEnrollmentDetails.json |

@TestCaseKey=UDB-T15068
  Scenario Outline: Verify premiumDeduction API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint          | requestBody 																																					   |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /premiumDeduction | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\premiumDeduction.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\premiumDeduction.json |

@TestCaseKey=UDB-T15596
  Scenario Outline: Verify getPMSchemeDetails API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint            | requestBody 																																							  |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /getPMSchemeDetails | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\getPMSchemeDetails.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\getPMSchemeDetails.json |

@TestCaseKey=UDB-T15049
  Scenario Outline: Verify downloadCOI API returns correct response for valid request
    Given user sets the environment of endpoint
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a post request with <requestBody>
    Then user verifies that status is 200
    Then user verifies json from <responseBody>

    Examples: 
      | service            | endpoint     | requestBody																																			    |requestField   |responsefield      | filename       | responseBody                    |
      | govt_scheme_mobile | /downloadCOI | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\downloadCOI.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\downloadCOI.json |

#@TestCaseKey=UDB-T15365
 # Scenario Outline: Verify confirmAndPay API returns correct response for valid request
 #   Given user sets the environment of endpoint
 #   Given user set the basepath to <service>
 #   Then set the endpoint <endpoint>
 #   Then user triggers a post request with <requestBody>
 #   Then user verifies that status is 200
 #   Then user verifies json from <responseBody>

 #   Examples: 
 #     | service            | endpoint     | requestBody																																			    |requestField   |responsefield      | filename       | responseBody                    |
 #     | govt_scheme_mobile | /confirmAndPay | \src\test\resources\testdata\api\request\Drop2\govtscheme\mobile\confirmAndPay.json | null | null | null | \src\test\resources\testdata\api\response\expected\Drop2\govtscheme\mobile\confirmAndPay.json |
      