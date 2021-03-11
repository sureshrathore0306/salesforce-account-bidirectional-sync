%dw 2.0
output application/java
---
//Fox to New
payload map ((item) -> {
	(Id: item.Id) if (item.Id != null),
	RecordTypeId: vars.vInitialized.recordType.personId,
	FirstName: item.FirstName,
	LastName: item.LastName,
	PersonEmail: item.Email,
	Phone: item.Phone,
	PersonMobilePhone: item.MobilePhone,
	Division__c: item.Division_Code__c,
	PersonBirthdate: item.Birthdate
})