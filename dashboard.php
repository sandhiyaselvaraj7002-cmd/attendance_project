<?php
session_start();
if(!isset($_SESSION['faculty_id'])){
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #6a11cb, #9b59b6);
            text-align: center;
            color: white;
        }

        .container {
            margin-top: 100px;
        }

        a {
            display: block;
            width: 250px;
            margin: 15px auto;
            padding: 12px;
            background: white;
            color: #6a11cb;
            text-decoration: none;
            border-radius: 10px;
            font-weight: bold;
        }

        a:hover {
            background: #ddd;
        }
    </style>
</head>

<body>

<div class="container">
    <h1>Welcome, <?php echo $_SESSION['faculty_name']; ?> 👋</h1>

    <a href="attendance.php">📋 Mark Attendance</a>
    <a href="report.php">📊 View Report</a>
    <a href="logout.php">🚪 Logout</a>
</div>

</body>
</html>