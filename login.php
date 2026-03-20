<?php
include "db.php";
session_start();
$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM faculty WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $_SESSION['faculty_id'] = $row['id'];
        $_SESSION['faculty_name'] = $row['name'];
        header("Location: dashboard.php");
        exit;
    } else {
        $message = "❌ Invalid Username or Password!";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Faculty Login</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
            background: linear-gradient(to right, #6a11cb, #9b59b6);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: white;
            padding: 40px;
            border-radius: 15px;
            width: 300px;
            text-align: center;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
        }

        h2 {
            color: #6a11cb;
            margin-bottom: 20px;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
        }

        input:focus {
            border-color: #6a11cb;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #6a11cb;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #9b59b6;
        }

        .message {
            margin-top: 15px;
            font-weight: bold;
        }
    </style>

</head>
<body>

<div class="login-box">
    <h2> Faculty Login</h2>

    <form method="POST" name="loginForm" onsubmit="return validateForm()">
        <input type="text" name="username" placeholder="Enter Username" required>
        <div style="display: flex; align-items: center; gap: 10px; margin:10px 0;">
    <input type="password" name="password" placeholder="Enter Password" required style="flex:1; padding:10px;">
    <label>
        <input type="checkbox" onclick="togglePassword()"> Show
    </label>
</div>
        <button type="submit">Login</button>
    </form>

    <div class="message">
        <?php echo $message; ?>
    </div>
</div>
<script>
function validateForm() {
    let u = document.forms["loginForm"]["username"].value;
    let p = document.forms["loginForm"]["password"].value;

    if (u == "" || p == "") {
        alert("Please fill all fields!");
        return false;
    }
}

function togglePassword() {
    let pass = document.querySelector("input[name='password']");
    pass.type = (pass.type === "password") ? "text" : "password";
}
</script>
</body>
</html>