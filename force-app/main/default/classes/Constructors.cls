/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 15-09-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   14-09-2025   Sangram Keshari Upadhyaya   Initial Version
**/
public class Constructors {
	Integer intVar;
    Decimal decVar;
    Account accVar;
    Datetime dttmVar;
    
    public Constructors(){
        this.intVar = 14;
        this.decVar = 34.43;
        this.accVar = new Account(Name = 'Learn Constructors');
        this.dttmVar = DateTime.newInstance(2011, 11, 18, 3, 3, 3);
    }
    
    Constructors(Integer intVar, Datetime dttmVar){
        this.intVar = intVar;
        this.dttmVar = dttmVar;
    }
    
    Constructors(Integer intVar, Decimal decVar, Account accVar, Datetime dttmVar){
        this.intVar = intVar;
        this.decVar = decVar;
        this.accVar = accVar;
        this.dttmVar = dttmVar;
    }
    
    public static void constructorInstantiator(){
        Constructors consInt = new Constructors(21, 45.54, new Account(Name = 'Created from Method Call'), DateTime.newInstance(2025, 11, 18, 3, 3, 3));
        System.debug('Here are the values : '+consInt.intVar+' '+consInt.decVar+' '+consInt.accVar+' '+consInt.dttmVar);
    }

    public void instanciateConstructor(){
        System.debug('The values are : '+intVar);
    }
    
}