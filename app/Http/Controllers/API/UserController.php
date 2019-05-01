<?php

namespace App\Http\Controllers\API;

use App\User;
use http\Exception;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try{
            $user = User::all();
            if(!$user){
                return response(['status'=>['code'=>'404','message'=>'Not Found']],404)->header('Content-Type', 'application/json');
            }
            return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$user]);
        }catch(Exception $e){
            return response(['status'=>['code'=>'500','message'=>'Unexpected Error']],500)->header('Content-Type', 'application/json');
        }
    }

    public function login(Request $request){
        try{
            $request = $request->only(['email','password']);

            if($request['email'] == null || $request['password'] == null){
                return response(['status'=>['code'=>'400','message'=>'No e-mail or password specified']],400)->header('Content-Type', 'application/json');
            }

            $user = User::where('email',$request['email'])->first();

            if($user){
                if(Hash::check($request['password'],$user->password)){
                    return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$user]);
                }else{
                    return response(['status'=>['code'=>'403','message'=>'Invalid e-mail or password']],403)->header('Content-Type', 'application/json');
                }
            }else{
                return response(['status'=>['code'=>'403','message'=>'Invalid e-mail or password']],403)->header('Content-Type', 'application/json');
            }
        }catch (Exception $e){
            return response(['status'=>['code'=>'500','message'=>'Unexpected Error']],500)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            $request = $request->only(['nama','email','password']);

            if($request['email'] == null || $request['password'] == null){
                return response(['status'=>['code'=>'400','message'=>'No e-mail or password specified']],400)->header('Content-Type', 'application/json');
            }

            $info = DB::table('users')->select('email')->where('email',$request['email'])->first();
            if($info == null){
                $user = User::create([
                    'name' => $request['nama'],
                    'email' => $request['email'],
                    'password' => Hash::make($request['password']),
                ]);
            }else{
                return response(['status'=>['code'=>'403','message'=>'Invalid Entry']],403)->header('Content-Type', 'application/json');
            }

            if($user){
                return response(['status'=>['code'=>'201','message'=>'Created']],201)->header('Content-Type', 'application/json');
            }else{
                return response(['status'=>['code'=>'403','message'=>'Invalid entry']],403)->header('Content-Type', 'application/json');
            }
        }catch (Exception $e){
            return response(['status'=>['code'=>'500','message'=>'Unexpected Error']],500)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try{
            $user = User::where('id',$id)->first();
            if(!$user){
                return response(['status'=>['code'=>'404','message'=>'Not Found']],404)->header('Content-Type', 'application/json');
            }
            return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$user]);
        }catch(Exception $e){
            return response(['status'=>['code'=>'500','message'=>'Unexpected Error']],500)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
