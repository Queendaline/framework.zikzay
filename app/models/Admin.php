<?php
namespace Zikzay\Model;

use stdClass as std;
use Zikzay\Core\Model;

class Admin extends Model {

    public $name;
    public $email;
    public $password;
    public $phone_no;

    public function __construct()
    {
        parent::__construct();
    }

    public static function define(std $field) : std
    {
        $field->id = self::primaryKey();
        $field->name = self::nameField();
        $field->email = self::emailField();
        $field->password = self::passwordField();
        $field->phone_no = self::phoneField();
        $field->created_at = self::timestampField();
        $field->updated_at = self::timestampField(true);
        
        return $field;
    }
    
    
}