

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><script type="text/javascript"language="javascript">  
   function redirect(){
		location.replace("voting.jsp");
   }
   function redirect1(){
       location.replace("403.jsp");
   }
   function CompareDate() {  
       var todayDate = new Date(); //Today Date  
       var dateOne = new Date(2019, 05, 27);  
       if (todayDate = dateOne) {  
            redirect();
        }else {  
            redirect1();  
        }  
    }  
    CompareDate();  
</script></html>
