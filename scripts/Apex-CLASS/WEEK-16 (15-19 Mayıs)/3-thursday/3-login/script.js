function login() {
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');
  
    const username = usernameInput.value;
    const password = passwordInput.value;
  
    if (username === 'admin' && password === 'password') {
      alert('Login successful!');
      // Redirect to the desired page
    } else {
      alert('Invalid username or password. Please try again.');
      // Clear the input fields or perform any desired action
    }
  }
 

  //bunu cuma dersinde güncelledi