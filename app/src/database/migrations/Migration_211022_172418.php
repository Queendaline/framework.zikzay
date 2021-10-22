<?php
namespace Zikzay\Database;


class Migration_211022_172418 extends Migration {

    public function up() { 
        $this->createTable("admin", "id", "INT NOT NULL ", " AUTO_INCREMENT");
        $this->addColumn("admin", "name", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("admin", "email", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("admin", "password", "VARCHAR(255) NOT NULL ");
        $this->addColumn("admin", "phone_no", "VARCHAR(14) NOT NULL  ");
        $this->addColumn("admin", "created_at", "TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP");
        $this->addColumn("admin", "updated_at", "TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP");

        $this->createTable("music", "id", "INT NOT NULL ", " AUTO_INCREMENT");
        $this->addColumn("music", "name", "VARCHAR(255) NOT NULL ");
        $this->addColumn("music", "genre", "VARCHAR(25) NOT NULL ");
        $this->addColumn("music", "musician", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("music", "uploaded", "INT UNSIGNED NULL ");
        $this->addColumn("music", "created_at", "TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP");
        $this->addColumn("music", "updated_at", "TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP");



    }
    
    public function down() { 
        
    }
}