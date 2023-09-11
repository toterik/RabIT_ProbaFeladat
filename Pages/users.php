<!DOCTYPE HTML>
<html lang="hu">
<head>
    <title>Users</title>
    <link rel="stylesheet" href="../Css/style.css">
</head>
<body>
    <table>
        <tr>
            <th>Users</th>
        </tr>

        <?php
        // Require the Controller.php file to include necessary controller classes
        require_once '../Controller/Controller.php';

        // Create an instance of the userController class
        $userController = new userController();

        // Get all users
        $users = $userController->getUsers();

        // Loop through each user and display their name in a table row
        foreach ($users as $values) {
            echo '<tr>';
                echo '<td>' . $values->getName() . '</td>'; // Display user name
            echo '</tr>';
        }
        ?>
    </table>

    <button><a href="index">Back</a></button>

</body>
</html>
