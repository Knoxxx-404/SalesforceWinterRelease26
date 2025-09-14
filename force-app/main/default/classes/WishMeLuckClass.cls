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
public class WishMeLuckClass {
    
    public static void greetingMe(){
        System.debug('Hello, Sangram!');
    }
    
    static Integer i = 0;
    static String sn = 'Sangram';
    public static void checkStatement(){
        if(i == 0){
            System.debug('Hey '+sn+', This is a statement!');
        }
    }
    
    public class InnerClass {
        public InnerClass(){
            
        }
        Integer ii = 1;
        String isn = 'Sangram';
        public void innerMethod(){
            if(ii != 0){
                System.debug('Hey '+isn+', This is a statement!');
            }
        }
        /*
         * Classes can be only one level deeper.
        public class InnerClass2ndLevel{
            
        }
		*/
        
    }
    
}