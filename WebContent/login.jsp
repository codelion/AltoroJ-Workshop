<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
    // Import the necessary class for escaping HTML
    import org.apache.commons.text.StringEscapeUtils;
%> 
    
<jsp:include page="header.jspf"/>

<div id="wrapper" style="width: 99%;">
    <jsp:include page="/toc.jspf"/>
   <td valign="top" colspan="3" class="bb">
        <div class="fl" style="width: 99%;">
        
        <h1>Online Banking Login</h1>
        
        <!-- To get the latest admin login, please contact SiteOps at 415-555-6159 -->
        <p><span id="_ctl0__ctl0_Content_Main_message" style="color:#FF0066;font-size:12pt;font-weight:bold;">
        <%
        java.lang.String error = (String)request.getSession(true).getAttribute("loginError");
        
        if (error != null && error.trim().length() > 0){
            request.getSession().removeAttribute("loginError");
            out.print(StringEscapeUtils.escapeHtml4(error));
        }
        %>
        </span></p>
        
        <form action="doLogin" method="post" name="login" id="login" onsubmit="return (confirminput(login));">
          <table>
            <tr>
              <td>
                Username:
              </td>
              <td>
                <input type="text" id="uid" name="uid" value="" style="width: 150px;">
              </td>
              <td>
              </td>
            </tr>
            <tr>
              <td>
                Password:
              </td>
              <td>
                <input type="password" id="passw" name="passw" style="width: 150px;">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                  <input type="submit" name="btnSubmit" value="Login">
                </td>
              </tr>
          </table>
        </form>
        
        </div>
        
        <script type="text/javascript">
            function setfocus() {
                if (document.login.uid.value=="") {
                    document.login.uid.focus();
                } else {
                    document.login.passw.focus();
                }
            }
            
            function confirminput(myform) {
                if (myform.uid.value.length && myform.passw.value.length) {
                  return (true);
                } else if (!(myform.uid.value.length)) {
                  myform.reset();
                  myform.uid.focus();
                  alert ("You must enter a valid username");
                  return (false);
                } else {
                  myform.passw.focus();
                  alert ("You must enter a valid password");
                  return (false);
                }
            }
            window.onload = setfocus;
        </script>
    </td>
</div>

<jsp:include page="footer.jspf"/>
