<?php
namespace Zikzay\Database;


class Migration_211020_135550 extends Migration {

    public function up() { 
        $this->createTable("music", "id", "INT NOT NULL ", " AUTO_INCREMENT");
        $this->addColumn("music", "name", "VARCHAR(50) NOT NULL ");
        $this->addColumn("music", "genre", "VARCHAR(25) NOT NULL ");
        $this->addColumn("music", "musician", "VARCHAR(64) NOT NULL  ");
        $this->addColumn("music", "uploaded", "INT UNSIGNED NULL ");
        $this->addColumn("music", "created_at", "TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP");
        $this->addColumn("music", "updated_at", "TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP");



    }
    
    public function down() { 
        
    }
}