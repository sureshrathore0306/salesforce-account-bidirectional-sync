%dw 2.0
output application/java
---
payload map ((item) -> {
	PersonMobilePhone: item.MobilePhone,
	Phone: item.Phone,
	PersonEmail: item.Email,
	Name: item.Name,
	Division__c: item.Division_Code__c,
	PersonBirthdate: item.Birthdate,
	RecordTypeId: p('personAccount.recordTypeId'),
	(Id: item.Id) if (item.Id != null)
})