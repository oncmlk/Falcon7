public class StudentInfo {

    public static string University = 'SalesForce University';
    public StudentInfo() 
        {
        system.debug('Welcome to the  ' + University);
        }
    public void printStudentInfo(string name, string course, integer marks) 
        {
            if (marks > 70) {
            System.System.debug('Hey ' + name + '! You have got Distinction class in your '+ course + ' course' );
             }
            else if (marks >=60) 
            { 
                System.System.debug('Hey ' + name + '! You have got First class in your '+ course + ' course' );
            }
            else if (marks >=50) 
            { 
                System.System.debug('Hey ' + name + '! You have got Second class in your '+ course + ' course' );
            }
            
           else if (marks>=35) 
           { 
            System.System.debug('Hey ' + name + '! You have got Pass class in your '+ course + ' course' );
           }
            else 
            { 
                System.System.debug('Hey ' + name + '! You failed :(( in your '+ course + ' course' );
            }
     }
}
