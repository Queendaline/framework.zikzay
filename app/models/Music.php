<?php
namespace Zikzay\Model;

use stdClass as std;
use Zikzay\Core\Model;

class Music extends Model {

    public $name;
    public $genre;
    public $musician;
    public $uploaded;

    public function __construct()
    {
        parent::__construct();
    }

    public static function define(std $field) : std
    {
        $field->id = self::primaryKey();
        $field->name = self::stringField(255);
        $field->genre = self::stringField(25);
        $field->musician = self::nameField();
        $field->uploaded = self::intField(3);
        $field->created_at = self::timestampField();
        $field->updated_at = self::timestampField(true);
        
        return $field;
    }
    
    
}