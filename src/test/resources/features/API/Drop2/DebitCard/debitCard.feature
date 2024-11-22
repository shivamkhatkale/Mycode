Feature: Smoke of DebitCard
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/DebitCard


@TestCaseKey=UDB-T30160 @Smoke @E2E
Scenario Outline: Verify post debitcardProfile api returns correct response for valid account number
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T30167 @Smoke @E2E
Scenario Outline: Verify post green-pin api returns correct response for valid account number and card number
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |cardNum,acctNum            | cardAccNum,acctNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T30175 @Smoke @E2E
Scenario Outline: Verify post fhmUpdateLimit api returns correct response for valid account number and card number
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmUpdateLimit.json  |primaryAccountNumber,debitCardNumber            | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|


@TestCaseKey=UDB-T30181 @Smoke @E2E
Scenario Outline: Verify post Block/Unblock api returns correct response for Valid card number and card Status as true(Unblock Card).
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |primaryAccountNumber           | cardAccNum         | debitCardProfile.json  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

