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
public class StaticKeyword {
    
	static Integer newVar = 78;
    Decimal oldVar = 87.09;
    static Integer maxUsersAllowed = 50;
    static Datetime currentDate = Datetime.now();
    // List<String> favColorList = new List<String>();
    // favColorList.add('Black');
    // favColorList.add('Blue');
    // favColorList.add('Red');
    
    // static public StaticKeyword(){
        
    // }
    
    public static void getStaticValue(){
        // public static Integer staticLocalVariable = 45;
        System.debug('The static value is : '+newVar);
        StaticKeyword statKey = new StaticKeyword();
        System.debug('The non-static value is : '+statKey.oldVar);
        // nonStaticMethod();
    }
    
    static public void getValue(){
        List<String> favColorList = new List<String>();
    	favColorList.add('Black');
    	favColorList.add('Blue');
    	favColorList.add('Red');
        System.debug('Just reversed');
        
        getStaticValue();
    }
    
    public void nonStaticMethod(){
        getValue();
    }
    
}