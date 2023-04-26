<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Notifications\AdminsResetPasswordNotification;

class Admins extends User
{
    protected $table ="admins";

      /**
     * gửi link khôi phục mật khẩu cho tài khoản Admin.
     *
     * @param  string  $token
     * @return void
     */
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new AdminsResetPasswordNotification($token));
    }
     public static $validators = array(
        'name'   => 'required|min:3',        
        'password'  => 'required|min:4|confirmed',
        'password_confirmation'  => 'required|min:4',
        'sltlevel'  => 'required'
        );
    public static $validators_edit = array(
        'name'   => 'required|min:3',
        'address'   => 'required|min:3',
        'phone'   => 'required|min:3',
        'sltlevel'  => 'required'
        );
    public static $validators_pass = array(
        'oldpassword'  => 'required',
        'password'  => 'required|min:4|confirmed',
        'password_confirmation'  => 'required|min:4',
        );

    
}
