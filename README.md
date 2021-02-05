
# Salesforce to Salesforce Account Bidirectional Synchronization	

# Use Case
Fetching data for changes (new or modified Accounts) using scheduler that have occurred in any of the Salesforce instances
during a certain defined period of time. For those Accounts that both have not been updated yet the integration 
triggers an upsert (update or create depending the case) taking the last modification as the one that should be applied.

## Salesforce Considerations

Here's what you need to know about Salesforce to get this to work:

- Where can I check that the field configuration for my Salesforce instance is the right one? See: <a href="https://help.salesforce.com/HTViewHelpDoc?id=checking_field_accessibility_for_a_particular_field.htm&language=en_US">Salesforce: Checking Field Accessibility for a Particular Field</a>.
- Can I modify the Field Access Settings? How? See: <a href="https://help.salesforce.com/HTViewHelpDoc?id=modifying_field_access_settings.htm&language=en_US">Salesforce: Modifying Field Access Settings</a>.

#### Application configuration

+ scheduler.frequency `10000`  
This are the milliseconds that will run between two different checks for updates in either Salesforce instance

+ scheduler.startDelay `0`

+ watermark.default.expression `2021-02-03T11:00:00.000Z`  
This property is an important one, as it configures what should be the start point of the synchronization. If the use 
case includes synchronization of every account created from the begining of the times, you should use a date previous
to any account creation (perhaphs `1900-01-01T08:00:00.000Z` is a good choice). If you want to synchronize the accounts
created from now on, then you should use a default value according to that requirement (for example, if today is 
Feb 5th of 2021 and it's eleven o'clock in India, then you could use the following value `2021-03-05T11:00:00.000Z`).

+ page.size `1000`

#### SalesForce Connector configuration for company A

+ sfdc.a.username `organization1@mail.com`
+ sfdc.a.password `password`
+ sfdc.a.securityToken `avsfwCUl7apQs56Xq2AKaaa`

#### SalesForce Connector configuration for company B

+ sfdc.b.username `organization1@mail.com`
+ sfdc.b.password `password`
+ sfdc.b.securityToken `ces56arl7apQs56XTddf3aa`