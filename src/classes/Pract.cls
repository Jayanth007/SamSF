public class Pract {
	
	public void Sample(string t)
	{
		/*
	//	Map<string,string> n = new Map<ID,sObject>();
		Map<string,Schema.SObjectType> gd = Schema.getGlobalDescribe();		
        Schema.SObjectType st = gd.get(t);


Map m = Schema.getGlobalDescribe() ;

Schema.SObjectType s = m.get(‘API_Name_Of_SObject’) ;

Schema.DescribeSObjectResult r = s.getDescribe() ;

Map fields = r.fields.getMap() ;
		*/
	}
	public void create()
	{
		//Find out the required felid uisng Apex
		Map<string,SObject> d = Schema.getGlobalDescribe();
		Schema.SObjectType s= d.get('Account');
		Schema.DescribeSObjectResult r = s.getDescribe();
		Map<string ,Schema.SObjectType> feild = r.fields.getMap();
		for(string f : feild.keySet())
		{
			Schema.DescribeFieldResult desribeResult  = feild.get(f).getDescribe();
			if( desribeResult.isCreateable() && !desribeResult.isNillable() && !desribeResult.isDefaultedOnCreate() )
			{
				system.debug('This the mandate felid in the account : '+f);
			}
		}
		string rec = ApexPages.currentPage().getParameters().get()
		
	}
    
}