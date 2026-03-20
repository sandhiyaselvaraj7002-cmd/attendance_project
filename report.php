<?php
session_start();
include "db.php";

if(!isset($_SESSION['faculty_id'])){
    header("Location: login.php");
    exit;
}

$faculty_id = $_SESSION['faculty_id'];
?>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Report</title>

    <style>
        body {
            font-family: Arial;
            background: linear-gradient(to right, #6a11cb, #9b59b6);
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
        }

        h2 {
            text-align: center;
            color: #6a11cb;
        }

        select, input, button {
            padding: 10px;
            margin: 10px;
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th {
            background: #6a11cb;
            color: white;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }
    </style>
</head>

<body>

<div class="container">
    <a href="dashboard.php">⬅ Back to Dashboard</a>
    <h2>📊 Attendance Report</h2>

    <form method="POST">
        <label>Select Course:</label>
        <select name="course_data" required>
            <option value="">Select</option>

            <?php
            $sql = "SELECT * FROM faculty_assignments WHERE faculty_id='$faculty_id'";
            $result = $conn->query($sql);

            while($row = $result->fetch_assoc()){
                $value = $row['course']."|".$row['department']."|".$row['section'];
                echo "<option value='$value'>{$row['course']} ({$row['department']} - {$row['section']})</option>";
            }
            ?>
        </select>

        <label>Select Date:</label>
        <input type="date" name="date" required>

        <button type="submit" name="view">View Report</button>
    </form>

    <?php
    if(isset($_POST['view'])){
        list($course, $department, $section) = explode("|", $_POST['course_data']);
        $date = $_POST['date'];

        $sql = "SELECT s.roll_no, s.name, a.status 
                FROM attendance a
                JOIN students s ON a.student_id = s.id
                WHERE a.course='$course' 
                AND a.date='$date'
                AND s.department='$department'
                AND s.section='$section'";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            echo "<input type='text' id='search' placeholder='Search...' onkeyup='searchTable()'>";
            echo "<table>";
            echo "<tr><th>Roll No</th><th>Name</th><th>Status</th></tr>";

            while($row = $result->fetch_assoc()){
                echo "<tr>";
                echo "<td>".$row['roll_no']."</td>";
                echo "<td>".$row['name']."</td>";
                $status = $row['status'];
$color = ($status == "Present") ? "green" : "red";
echo "<td style='color:$color; font-weight:bold;'>$status</td>";
                echo "</tr>";
            }

            echo "</table>";
            echo "</table>";

// 👉 ADD THIS CODE HERE
$present = 0;
$absent = 0;

$result->data_seek(0);

while($row = $result->fetch_assoc()){
    if($row['status'] == "Present") $present++;
    else $absent++;
}
echo "<h3 style='color:green;'>Total Present: $present</h3>";
echo "<h3 style='color:red;'>Total Absent: $absent</h3>";

        } else {
            echo "<p>No records found!</p>";
        }
    }
    ?>

</div>
<script>
function searchTable() {
    let input = document.getElementById("search").value.toLowerCase();
    let rows = document.querySelectorAll("table tr");

    rows.forEach((row, index) => {
        if(index === 0) return;
        row.style.display = row.innerText.toLowerCase().includes(input) ? "" : "none";
    });
}
</script>
</body>
</html>