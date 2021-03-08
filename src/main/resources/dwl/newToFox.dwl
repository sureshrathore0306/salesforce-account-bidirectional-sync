%dw 2.0
output application/java
---
payload map ((item) -> {
	(Id: item.Id) if (item.Id != null),	
//	RecordTypeId: '012A0000000vZweIAE',
	FirstName: item.FirstName,
	LastName: item.LastName,
	Email: item.PersonEmail,
	Phone: item.Phone,
	MobilePhone: item.PersonMobilePhone,
	Division_Code__c: item.Division__c,
	Birthdate: item.PersonBirthdate,	
})