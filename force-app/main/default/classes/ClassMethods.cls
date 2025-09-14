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
public class ClassMethods {
    
    public static Decimal calculateFinalDiscount(Decimal sellingPrice, Integer discountPercent){
        Decimal finalDiscountAmount = sellingPrice - ((sellingPrice * discountPercent)/100);
        System.debug('The final discounted amount for the article which was initially priced at '+sellingPrice+' after '+discountPercent+' percent discount is '+finalDiscountAmount);
        return finalDiscountAmount;
    }
    
    public static Integer calculateAge(Integer yearOfBirth){
        Date todaysDate = Date.today();
        Integer thisYear = todaysDate.year();
        Integer age = (thisYear - yearOfBirth);
        System.debug('You are '+age+' years old.');
        return age;
    }

}