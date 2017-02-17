public with sharing class SampleSOQL {
	public void Prac(){
	//Fetch document form the document object
	Document d =[select body from document where name ='Test'];
	//attachment of the document to email
	//messaging.EmailFileAttachment at = new messaging.EmailFileAttachment();
    //at.setFileName('Test.pdf');
  //  at.setBody(d.body);
    
    //Refer to VF Page and convert into pdf attachment
    pagereference p = new pagereference();
    blob body = p.getContentAsPDF();
    Messaging.EmailFileAttachment e2 = new Messaging.EmailFileAttachment();
    e2.setFileName('mar-bill.pdf');
    e2.setBody(body);
    Map d = Schema.getModuleDescribe();
    
	}
    
}