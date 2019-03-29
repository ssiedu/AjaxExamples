<html>
     <script>
         
      var request;
      
      function one(){
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       request.open("get", "GetTime", true);
       request.send(null);
      }
      function two(){
        
            if(request.status==200 && request.readyState==4)
             document.getElementById("data").innerHTML=request.responseText;
        
      }
    </script>

    <body>
        <h1>Ajax-Example</h1>
        <input type="button" value="Get-Time" onclick="one()" />
        <div id="data">Place-To-Show-Time</div>
    </body>
</html>
