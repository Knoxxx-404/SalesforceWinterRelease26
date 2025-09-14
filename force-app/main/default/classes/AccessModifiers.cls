/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 15-09-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   15-09-2025   Sangram Keshari Upadhyaya   Initial Version
**/
public class AccessModifiers {
    
    static void getFinalValues() {
        Integer finalCount = new Variables().i;
        System.debug('The final count is: '+finalCount);
        
        Variables var = new Variables();
        // As the 'checkIfRecordExists' variable was private in the Variables class so it not visible
        // Boolean checkStatus = var.checkIfRecordExists;
    }
    
    public static void getDate(){
        AllMyVariables myVarClassInstance = new AllMyVariables();
        Date results = myVarClassInstance.showTodayDate();
        System.debug('The results are : '+results);
    }
    
    public class InsideClass {
        
    }
    
    private class InsidePublicClass {
        
    }
    
    class PrivateClassByDefault {
        
    }
    
    /*
     * Global Class can't be present inside Public Class
    global class GlobalClassInside {
        
    }
	*/
    
}