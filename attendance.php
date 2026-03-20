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
    <title>Attendance Module</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #6a11cb, #9b59b6);
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #6a11cb;
        }

        select, button {
            padding: 10px;
            margin: 10px 5px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        button {
            background: #6a11cb;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background: #9b59b6;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: #6a11cb;
            color: white;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #e6d6ff;
        }

        .save-btn {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container">
    <a href="dashboard.php">⬅ Back to Dashboard</a>
    <h2> Attendance </h2>
    <p style="text-align:center; font-weight:bold;">
    Date: <?php echo date("d-m-Y"); ?>
</p>

    <!-- Course Selection -->
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

        <button type="submit" name="load">Load Students</button>
    </form>

    <?php
    if(isset($_POST['load'])){
        list($course, $department, $section) = explode("|", $_POST['course_data']);

        $sql = "SELECT * FROM students WHERE department='$department' AND section='$section'";
        $students = $conn->query($sql);

        if($students->num_rows > 0){

            echo "<form method='POST' action='save_attendance.php'>";
            echo "<button type='button' onclick='markAllPresent()'>✅ Mark All Present</button>";
echo "<button type='button' onclick='markAllAbsent()'>❌ Mark All Absent</button>";
            echo "<table>";
            echo "<tr><th>Roll No</th><th>Name</th><th>Status</th></tr>";

            while($s = $students->fetch_assoc()){
                echo "<tr>";
                echo "<td>".$s['roll_no']."</td>";
                echo "<td>".$s['name']."</td>";
                echo "<td>
                       <select name='status[".$s['id']."]'>
                            <option value='Present'>Present</option>
                            <option value='Absent'>Absent</option>
                        </select>
                      </td>";
                echo "</tr>";
            }

            echo "</table>";

            echo "<input type='hidden' name='faculty_id' value='$faculty_id'>";
            echo "<input type='hidden' name='course' value='$course'>";
            echo "<input type='hidden' name='department' value='$department'>";
            echo "<input type='hidden' name='section' value='$section'>";
            echo "<input type='hidden' name='date' value='".date("Y-m-d")."'>";

            echo "<button type='submit' class='save-btn'>Save Attendance</button>";
            echo "</form>";

        } else {
            echo "<p>No students found!</p>";
        }
    }
    ?>

</div>
<script>
function markAllPresent() {
    let selects = document.querySelectorAll("select[name^='status']");
    selects.forEach(s => s.value = "Present");
}

function markAllAbsent() {
    let selects = document.querySelectorAll("select[name^='status']");
    selects.forEach(s => s.value = "Absent");
}
</script>
</body>
</html>