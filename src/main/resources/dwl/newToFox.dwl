%dw 2.0
output application/java
---
//New to Fox
payload map ((item) -> {
	(Id: item.Id) if (item.Id != null),	
	RecordTypeId: vars.vInitialized.recordType.providerId,
	FirstName: item.FirstName,
	LastName: item.LastName,
	Email: item.PersonEmail,
	Phone: item.Phone,
	MobilePhone: item.PersonMobilePhone,
	Division_Code__c: item.Division__c,
	Division__c: (vars.vInitialized.division filter ((div, index) -> div.Name == item.Division__c)).Id[0],
	Birthdate: item.PersonBirthdate as Date {format: 'yyyy-MM-dd'},	
	Last_date_of_contact__c: item.Last_Two_way_Contact__c as Date {format: 'yyyy-MM-dd'},
	NPI_Number__c:	item.NPI__c,
	Team__c: item.Team__c,
	Credentialing_Status__c: item.Credentialing_Status__c,
	Degree__c: item.Degree__c	
})