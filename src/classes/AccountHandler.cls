public class AccountHandler {
    
    public static Account insertNewAccount( string AccName)
    {
        try{
        Account acc = new Account( Name = AccName);
        insert acc;
        return acc;
        
        }
        catch(DmlException e)
        {
            system.debug('empty string passed');
            return null;
        }
    }

}