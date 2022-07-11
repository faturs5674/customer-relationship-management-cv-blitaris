<?php

namespace App\Controllers;

use App\Models\M_user;

class login extends BaseController
{
    protected $m_user;
    public function __construct()
    {
        $this->m_user = new M_user();
    }
    public function index()
    {
        return view('/login');
    }
    public function auth()
    {
        $session = session();
        // $model = new UserModel();
        $username = $this->request->getVar('username');
        $password = $this->request->getVar('password');
        // dd($username, $password);

        $data = $this->m_user->where('username', $username)->first();
        if ($data) {
            // dd($email, $password);
            $pass = $data['password'];
            $verify_pass = password_verify($password, $pass);
            if ($verify_pass) {
                $ses_data = [
                    'user_id'       => $data['user_id'],
                    'username'     => $data['username'],
                    'user_email'    => $data['user_email'],
                    'logged_in'     => TRUE
                ];
                $session->set($ses_data);
                print_r(json_encode(array('status' => true, 'msg' => 'berhasil login!')));
                // return redirect()->to('/home');
                // return view('/home');
            } else {
                print_r(json_encode(array('status' => false, 'msg' => 'password salah!')));
                // return view('/login');
            }
        } else {
            print_r(json_encode(array('status' => false, 'msg' => 'akun tidak di temukan!')));
            // return redirect()->to('/login');
        }
    }

    public function logout()
    {
        $session = session();
        $session->destroy();
        return redirect()->to('/login');
    }
}
