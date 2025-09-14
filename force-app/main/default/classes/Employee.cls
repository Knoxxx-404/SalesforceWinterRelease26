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
public virtual class Employee {
    public Integer employeeId;
	public Integer workingHours;
	public String employeeName;
    
    public Employee(){
        // Default constructor
    }
    
    Employee(Integer workingHours){
        this.workingHours = workingHours;
    }

    Boolean completeJiraStories(Integer storiesCompleted){
        if(storiesCompleted >= 10)
            return true;
        else
            return false;
    }
    
    Boolean markAttendence(Integer hoursInOffice){
        if(hoursInOffice == new Employee(8).workingHours)
            return true;
        else
            return false;
    }
    
    public virtual void deliverQuality(Integer storiesCompleted, Integer hoursInOffice){
        Employee employeeInstance = new Employee();
        Boolean checkIfStoriesCompleted = employeeInstance.completeJiraStories(storiesCompleted);
        Boolean checkIfMarkedAttendence = employeeInstance.markAttendence(hoursInOffice);
        if(checkIfStoriesCompleted && checkIfMarkedAttendence)
            System.debug('Yes, the employee delivered Quality. He should be promoted.');
        else
            System.debug('No, the employee didn\'t deliver Quality. He shouldn\'t be promoted.');
    }
    
}