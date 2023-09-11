<?php
    class Advertisement
    {
        private $title;
        private $id;
        private $userId;

        public function fill($title, $id, $userid)
        {
            $this->title = $title;
            $this->id = $id;
            $this->userId = $userid;
        }
        
        public function getTitle()
        {
            return $this->title;
        }
        public function getuserId()
        {
            return $this->userId;
        }
    }

?>