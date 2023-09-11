<?php
require_once '../Model/UserModel.php';
require_once '../Model/AdvertisementModel.php';
    class AdvertisementController
    {
        public function getAdvertisements() 
        {
            $connect = new mysqli("localhost", "root", "", "probafeladat");

            if ($connect->connect_error) {
                die($connect->connect_error);
            }
            
            $advertisements = mysqli_query($connect, "SELECT * FROM advertisements");
        
            $output = array();
            while ($values = mysqli_fetch_assoc($advertisements)) {
                $currentAdvertisement = new Advertisement();
                $currentAdvertisement->fill($values['title'], $values['id'], $values['userid']);
                array_push($output, $currentAdvertisement);
            }

            return $output;
        }

        public function getUsernameById($userid)
        {
            $connect = new mysqli("localhost", "root", "", "probafeladat");

            $users = mysqli_fetch_assoc(mysqli_query($connect, "SELECT users.name FROM `advertisements` join users on '$userid'  = users.id"));

            return $outputUser = new User($users['name']);
        }
    }
    
    class userController
    {
        public function getUsers() 
        {
            $connect = new mysqli("localhost", "root", "", "probafeladat");

            if ($connect->connect_error) {
                die($connect->connect_error);
            }
            
            $users = mysqli_query($connect, "SELECT * FROM users");
        
            $output = array();
            while ($values = mysqli_fetch_assoc($users))
            {
                array_push($output, new User($values['name']));
            }
            
            return $output;
        }

    }


?>
