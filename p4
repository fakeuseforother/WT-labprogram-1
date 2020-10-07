<!DOCTYPE html>
<html>
<head>
<title>Javascript Functions</title>
<style>
#tb {
     padding: 4px 22px 4px 4px;
	 border: 1px solid red;
	 width:230px;
	 height: 30px;
	 font:20pt cambria;
	 }
.wrapper {
     text-align: center;
    }
.button {
     position: absolute;
     top: 40%;
     left: 52%;
     display: block;
     width: 10%;
     border: none;
     background-color: dodgerblue;
     color: white;
     padding: 10px 28px;
     font-size: 15px;
     cursor: pointer;
     text-align: center;
   	 margin-top: 20px;
	 }
</style>
</head>
<body>
<h1 style="color: brown; font-family: cambria;" align=center>Javascript Functions</h1>
<hr>
<h2 style="color: darkblue; font-family: cambria;">
<ul>
   <li>Enter String to get the position of the left-most vowel</li>
   <br>
   <li>Enter Number with its Digits to get the reverse order </li>
</ul>
</hr>
 
<table border= 2 align=center>
 <tr>
     <th align=center> Enter String/Number </th>
     <th align=center><input type=text id="tb" /></th>
 </tr>
</table>
 
<div class="wrapper">
 <button class="button" id="str" onclick= "myFunction((document.getElementById('tb').value))"
  style="background-color:dodgerblue; color:red"> <b>EXECUTE</b></button>
</div>
 
<br>
<br>
<br>
<br>
<table border=1 align=center>
 <tr>
 <th style="font-size: 30; color: brown; width=25%;">Result</th>
 <th width="85%"> <div id="result"> </div> </th>
 </tr>
</table>
 
<script>
 function myFunction(str)
{
 if(!isNaN(str))
 {
   var num=parseInt(str);
   var rev=0,rem=0;
   while (num>0)
   {
 
     rem=parseInt(num%10);
	 rev=rev*10+rem;
	 num=parseInt(num/10);
	 }
	 document.getElementById("result").innerHTML="<h3>Reverse of" +str+"is"+rev+"<h3>";
	}
	else
	{
	  var text="<h3>The Entered String is:  "+str+"</br>";
	  for(var i=0;i<str.length; i++)
	  {
	    if(str.charAt(i)=='a' || str.charAt(i) == 'e' || str.charAt(i) == 'i'
	        ||str.charAt(i)=='o' || str.charAt(i) == 'u' || str.charAt(i) == 'A'
		   ||str.charAt(i)=='E' || str.charAt(i) == 'I' || str.charAt(i) =='O'
		    ||str.charAt(i)=='U')
		{
		   text +="The Leftmost Vowel is : " +str.charAt(i)+ "<br/>";
		   var pos=i+1;
		   text +="The position of the leftmost vowel " +str.charAt(i)+ " is: " +pos+ "</h3><br/>";
		   document.getElementById("result").innerHTML=text;
		   exit;
		   }
 
    }
	text+="The Entered String has no Vowels</h3>";
	document.getElementById("result").innerHTML=text;
	}
}
</script>
</body>
</html>	
