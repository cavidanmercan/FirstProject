# Requirement : 

1. Create an HTML file called login.html
2. add the structure using ! 
3. inside the body add a div element with class = container 
4. inside the div create a h2 element with text login
5. add 3 input elements 
   1. type text , placeholder attribute username
   2. type password , placeholder attribute password
   3. type submit  value attribute of Login
6. Open up a style element inside Head section of the document and use below css provided
body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }
    
    .container {
      max-width: 300px;
      margin: 100px auto;
      padding: 20px;
      background-color: #ffffff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    .container h2 {
      text-align: center;
      color: #333333;
    }
    
    .container input[type="text"],
    .container input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #cccccc;
      border-radius: 3px;
    }
    
    .container input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
    
    .container input[type="submit"]:hover {
      background-color: #45a049;
    }