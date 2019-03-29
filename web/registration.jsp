<html>
     <script>
      var request;
      function one(){
       var v1=document.getElementById("t1").value;
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       request.open("get", "CheckId.jsp/*?t1="+v1, true);
       request.send(null);
      }
      function two(){
        
            if(request.status==200 && request.readyState==4){
             var v=request.responseText;
             document.getElementById("result").innerHTML=v;
             document.getElementById("res").value=v;
            }
     }
    </script>
    <body>
        <h1>Registration-Form</h1>
        <form action="SaveUser">
            <pre>
            Userid      <input type="text" name="t1" id="t1"/><input type="button" value="Check" onclick="one()"/>
                        <input type="text" name="res" id="res"/>
            Password    <input type="text" name="t2" id="t2"/>
            Name        <input type="text" name="t3" id="t3"/>
            Address     <input type="text" name="t4" id="t4"/>
            Mobile      <input type="text" name="t5" id="t5"/>
                        <input type="submit" value="Submit"/>
            </pre>
            <div id="result"></div>
        </form>
    </body>
</html>
