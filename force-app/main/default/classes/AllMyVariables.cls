/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 13-09-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   13-09-2025   Sangram Keshari Upadhyaya   Initial Version
**/
@SuppressWarnings('PMD.MethodNamingConventions')
public class AllMyVariables {
    
    public Boolean isThisCorrect;
    public Integer thisNumber;
    public Account accRecord = new Account(Name='Created from Initialization', AccountNumber='1234567890', Active__c = 'Yes', AnnualRevenue = 43564, NumberofLocations__c = 3, Rating = 'Warm');
    static private Date todayDate = Date.today();
    
    public AllMyVariables(){
        this.isThisCorrect = false;
    }
    
    public AllMyVariables(Boolean isThisCorrect){
        // 'this' here refers to the class variable, whereas the parameter value is getting populated when the class is getting instantiated with arguments.
        // That takes parameter value.
        this.isThisCorrect = isThisCorrect;
        this.thisNumber = 10;
        
        // If we try to call class variables who value is not instantiate in the constructor explictly defined by us or not defined at the class level as well, it will throw 'null pointer error'
    }
    
    public Date showTodayDate(){
        Boolean constructorWithoutParams = new AllMyVariables().isThisCorrect;
        Boolean constructorWithParams = new AllMyVariables(true).isThisCorrect;
        Integer constructorNullPointerError = new AllMyVariables(true).thisNumber;
        System.debug('This is constructor without parameter or default constructor is '+constructorWithoutParams);
        System.debug('This is constructor with parameter is '+constructorWithParams);
        System.debug('This is constructor Null Pointer Error '+10/constructorNullPointerError);
        System.debug('Today\'s date is '+todayDate+' '+constructorWithParams+' '+isThisCorrect);
        return todayDate;
    }

    public static void CreateAccountRecord() {
        Account accRec = new Account(Name = 'Created from Code');
    	accRec.AccountNumber = '12121323';
    	accRec.Name = 'Created from Code';
        
        List<Account> accList = [SELECT Id, Name FROM Account];
        for(Account acc : accList) {
            if(accRec.Name != acc.Name) {
                INSERT accRec;
                Break;
        	}
        }
    }
    
}