function login() {
  
  const usernameInput = document.getElementById("username");
  const passwordInput = document.getElementById("password");
  const password = passwordInput.value;
  const username = usernameInput.value;

  if (username === "admin" && password === "password") {
    alert("Login successful!");
    // Redirect to the desired page
    window.location.href = "practice2_css.html";
  } else {
    alert("Invalid username or password. Please try again.");
    // Clear the input fields or perform any desired action
    usernameInput.value = "";
    passwordInput.value = "";
  }
}