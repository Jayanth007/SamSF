/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */

Public class CollectionsPrac {

   public void ListPrac() {
   	LIST<Integer> li = new LIST<Integer>();
   	//Creation of nested list
   	LIST<LIST<Set<string>>> nested = new 	LIST<LIST<Set<string>>>();
    li.add(jay);
    li.add(0,6);
    li.set(0,10);
    li.add(0,11);
    li.add(1,9);
    li.add(1,20);
    
    system.debug(li.get(0)+'_'+li.get(1)+'_'+li.get(2)+'_'+li.get(3)+'_'+li.get(4)+'_');
    
    //Decalring one diementional arrays in the form of lists
    //Below three statements are equal
    string[] color = new List<string>();
    LIST<string> c = new string[1];
    String[] colorss = new String[1];
    c.add('one');
 //   c.add('Two');
  //  c[3]='jay';
    System.debug('Value in the array of size 1'+c.get(1));
    string[] c1 = new string[1];
    LIST<integer> i = new integer[0];
    
    LIST<string> l = new LIST<string>{'yellow','red','green'};
    l.sort();
    System.debug(l.get(0)+'_'+l.get(1)+'_'+l.get(2));
    
    //Sorting applying to list
    List<SelectOption> options = new List<SelectOption>();
    options.add(new SelectOption('A','United States'));
    options.add(new SelectOption('C','Canada'));
    options.add(new SelectOption('A','Mexico'));
    System.debug('Before sorting: ' + options);
    options.sort();
    System.debug('After sorting: ' + options);
    
    LIST<SelectOption> o = new LIST<SelectOption>();
    o.add(new SelectOption('q','google','false'));
      o.add(new SelectOption('q','Microsoft','false'));
      
      //Different types of list constructors
      LIST<Integer> i = new LIST<integer>(li);
    
    
        
    }
    public void Setprac(){
    	Set<Integer> s = new Set<Integer>(); // Define a new set
        s.add(1);                            // Add an element to the set
        System.assert(s.contains(1));        // Assert that the set contains an element
        s.remove(1); 
        
                                // Remove the element from the set
    }
    public void MapPrac(){
    	Map<string,string> m = new Map<string,string>{'a'=>'b','c'=>'d'};
    	m.
    }
}