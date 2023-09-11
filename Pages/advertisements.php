<!DOCTYPE HTML>
<html lang="hu">
<head>
    <title>Advertisements</title>
    <link rel="stylesheet" href="../Css/style.css">
</head>
<body>
    <table>
        <tr>
            <th colspan="2">Advertisements</th> 
        </tr>
        <?php
        // Include required model and controller classes
        include '../Model/AdvertisementModel.php';
        include '../Model/UserModel.php';
        include '../Controller/Controller.php';

        // Create an instance of AdvertisementController
        $advertisement = new AdvertisementController();

        // Get all advertisements
        $allAdvertisements = $advertisement->getAdvertisements();

        // Loop through each advertisement
        foreach ($allAdvertisements as $values) {
            // Get the username associated with the advertisement's user ID
            $user = $advertisement->getUsernameById($values->getUserId());

            // Output a table row with user name and advertisement title
            echo '<tr>';
                echo '<td>' . $user->getName() . '</td>'; // Display user name
                echo '<td>' . $values->getTitle() . '</td>'; // Display advertisement title
            echo '</tr>';
        }
        ?>
    </table>
    
    <a href="index">
        <button>Back</button>
    </a>

</body>
</html>
