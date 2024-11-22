Feature: Assisted Portal flow - Consent Service

@TestCaseKey=UDB-T31263
Scenario Outline: Verify approve the content service
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 200

Examples:
|env|service      |endpoint               |requestId|consentStatus|
|consent|consent      |/consent		          |442630823   |approve      |

@TestCaseKey=UDB-T31264
Scenario Outline: Verify reject the content service
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 200

Examples:
|env|service      |endpoint               |requestId|consentStatus|
|consent|consent      |/consent		          |442630823   |reject      |

@TestCaseKey=UDB-T31265
Scenario Outline: Verify data to be fetched for the given requestID
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter get request <requestId>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestId    |responseBody |
|consent|consent      |/consent		          |3364310285   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GetConsentData.json|

@TestCaseKey=UDB-T31266
Scenario Outline: Verify status for the given consent requestID
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter get request <requestId>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               			|requestId    |responseBody|
|consent|consent      |/getStatusByConsentRequestId		|442630823   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GetStatus.json|

@TestCaseKey=UDB-T31267
Scenario Outline: Verify get consent details based on journey, subjourney and application number
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter get request <applicationNum>
Then user verifies that status is 200

Examples:
|env|service      |endpoint               			|applicationNum|
|consent|consent      |consentDetails/BFF/FD	        |852300   |

@TestCaseKey=UDB-T31268
Scenario Outline: Verify consent from the customer
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestBody |responseBody|
|consent|consent      |/consent		          |\src\test\resources\testdata\api\request\mvp\assistedportal\ConsentService.json |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentService_Response.json|

@TestCaseKey=UDB-T31269
Scenario Outline: Verify review the content service
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 200

Examples:
|env|service      |endpoint               |requestId|consentStatus|
|consent|consent      |/consent		          |442630823   |preview     |

