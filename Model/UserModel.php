<?php
    class User
    {
        private $name;
        private $id;
        
        function __construct($name)
        {
            $this->name = $name;
        }

        public function getName()
        {
            return $this->name;
        }
    }

?>