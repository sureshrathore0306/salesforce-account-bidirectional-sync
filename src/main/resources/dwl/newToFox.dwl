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
	Birthdate: item.PersonBirthdate,	
})