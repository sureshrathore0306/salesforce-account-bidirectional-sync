%dw 2.0
output application/java
---
payload map ((item) -> {
	Birthdate: item.PersonBirthdate,
	Phone: item.Phone,
	MobilePhone: item.PersonMobilePhone,
	FirstName: item.Name,
	LastName: "_",
	Division_Code__c: item.Division__c,
	Email: item.PersonEmail,
	(Id: item.Id) if (item.Id != null)	
})