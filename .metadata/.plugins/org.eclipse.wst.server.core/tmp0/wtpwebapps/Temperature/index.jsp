<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temperature</title>
<style>
 body {
            background-color: #f2f2f2; 
            font-family: Arial, sans-serif; 
        }

        h1 {
            text-align: center;
        }

        h3 {
            font-size: 24px; 
            text-align: center;
            color: red;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; 
        }

        .box {
            height: 50px;
            width: 300px;
            margin-bottom: 10px; 
            margin-left: 42%
        }

        input[type="submit"] {
            height: 40px;
            width: 200px; 
            font-size: 18px; 
            margin-left: 45%
        }

        h2 {
            text-align: center;
            font-size: 28px; 
        }

        p {
            text-align: center;
        }

        
        .results-container {
            background-color: #ffffff; 
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
</style>

</head>
<body>
 
 <h1>Temperature Converter (Celsius to Fahrenheit & Kelvin)</h1>
    <form action="ConverterServlet" method="post">
   
        <h3>Enter temperature into celsius:</h3> <input type="number" class="box" name="temperature" required>
        <br>
        
       
        <br>
        <input type="submit" value="Convert">
    </form>
    
    <h2>Conversion Results</h2>
 <div class="results-container">
  <p>Fahrenheit: ${convertedFahrenheit}</p>
    <p>Kelvin: ${convertedKelvin}</p>
 </div>
 
   
</body>
</html>