public with sharing class ContactController {
    public ContactController() {

    }   
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        throw new AuraHandledException('Forced error');
        /*return [// Changing Again-123- timepass- 
            SELECT FirstName, LastName, Email
            FROM Contact WITH SECURITY_ENFORCED
       ];*/
    }
}
