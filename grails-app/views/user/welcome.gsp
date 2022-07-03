<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/30/2017
  Time: 4:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <g:javascript library="jquery"/>
    <r:layoutResources/>
</head>

<body>
<g:render template="data" model="${r}">

</g:render>
<g:javascript>
    var value=$('#yname').val();
    console.log(value);

    $('#yname').focus(function(){
      console.log("sanjeev");
    });

    $('#yname').keypress(function(e) {
      console.log("User is pressing key");
      if(e.which==13){
          var value=$('#yname').val();
          console.log(value);

          callAjax(value);
          callAjax1(value);
      }
    });

    function callAjax(value){
        $.ajax({
           type:'POST',
           url:"${createLink(controller: "user", action: "getData")}",
           data: {v:value},

           success: function(response){
              console.log(response);
              $('#password').val(response);
           },
           error: function(response) {

           }
        });
    }


</g:javascript>

<r:layoutResources/>
</body>
</html>