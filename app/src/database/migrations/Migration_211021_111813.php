<?php
namespace Zikzay\Database;


class Migration_211021_111813 extends Migration {

    public function up() { 
        $this->createTable("admin", "id", "INT NOT NULL ", " AUTO_INCREMENT");
        $this->addColumn("admin", "name", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("admin", "email", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("admin", "password", "VARCHAR(255) NOT NULL ");
        $this->addColumn("admin", "phone_no", "VARCHAR(14) NOT NULL  ");
        $this->addColumn("admin", "created_at", "TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP");
        $this->addColumn("admin", "updated_at", "TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP");


    }
    
    public function down() { 
        
    }
}