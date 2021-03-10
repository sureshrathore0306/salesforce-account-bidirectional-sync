%dw 2.0
output application/java
---
//New to Fox
payload map ((item) -> {
	(Id: item.Id) if (item.Id != null),	
	RecordTypeId: p('contactProvider.recordTypeId'),
	FirstName: item.FirstName,
	LastName: item.LastName,
	Email: item.PersonEmail,
	Phone: item.Phone,
	MobilePhone: item.PersonMobilePhone,
	Division_Code__c: item.Division__c,
	Division__c: "a0R1k000003IewgEAC",
	Birthdate: item.PersonBirthdate,	
})