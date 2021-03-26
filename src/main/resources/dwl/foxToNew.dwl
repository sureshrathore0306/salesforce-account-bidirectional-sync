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
	PersonBirthdate: item.Birthdate as Date {format: 'yyyy-MM-dd'},
	Last_Two_way_Contact__c: item.Last_date_of_contact__c as Date {format: 'yyyy-MM-dd'},
	NPI__c:	item.NPI_Number__c	
})