public with sharing class OutBoundEmail 
{
	public void SendEmail()
	{
		EmailTemplate et = [select id from emailtemplate where name= 'Test'];
		Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
		msg.setTemplateId(et.ID);
		//If we want t send the data to the contact then pull the id of the contact
		//msg.setTargetObjectId(ContactIDThatRequried);
	}
    
}