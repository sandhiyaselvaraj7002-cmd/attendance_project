<?php
session_start();
include "db.php";

$message = "";

if(isset($_POST['status'])){
    $faculty_id = $_POST['faculty_id'];
    $course = $_POST['course'];
    $date = $_POST['date'];
    $date = date('Y-m-d');

    $saved = 0;

    foreach($_POST['status'] as $student_id => $status){

        $check = "SELECT * FROM attendance 
                  WHERE student_id='$student_id' 
                  AND course='$course' 
                  AND date='$date'";

        $result = $conn->query($check);

        if($result->num_rows == 0){
            $sql = "INSERT INTO attendance (student_id, faculty_id, course, date, status)
                    VALUES ('$student_id','$faculty_id','$course','$date','$status')";
            $conn->query($sql);
            $saved++;
        }
    }

    if($saved > 0){
        $message = "✅ Attendance Saved Successfully!";
    } else {
        $message = "⚠ Attendance already recorded!";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Save Attendance</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #6a11cb, #9b59b6);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background: white;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            width: 350px;
        }

        h2 {
            color: #6a11cb;
        }

        .message {
            margin: 20px 0;
            font-size: 18px;
            font-weight: bold;
        }

        .success {
            color: green;
        }

        .warning {
            color: orange;
        }

        a {
            display: block;
            margin-top: 20px;
            padding: 10px;
            background: #6a11cb;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        a:hover {
            background: #9b59b6;
        }
    </style>
</head>

<body>

<div class="box">
    <h2> Attendance Status</h2>

    <div class="message 
        <?php 
            if(strpos($message, 'Saved')) echo 'success';
            else echo 'warning';
        ?>">
        <?php echo $message; ?>
    </div>

    <a href="attendance.php">📋 Back to Attendance</a>
    <a href="dashboard.php">🏠 Go to Dashboard</a>
</div>
<script>
let msg = document.getElementById("msg").innerText;
if(msg){
    alert(msg);
}

setTimeout(function(){
    window.location.href = "dashboard.php";
}, 3000);
</script>
</body>
</html>
