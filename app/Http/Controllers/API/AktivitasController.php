<?php

namespace App\Http\Controllers\API;

use App\Activity;
use http\Exception;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class AktivitasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try{
            $activity = Activity::all();
            if(!$activity){
                return response(['status'=>['code'=>'404','message'=>'Not Found']],404)->header('Content-Type', 'application/json');
            }
            return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$activity]);
        }catch(Exception $e){
            return response(['status'=>['code'=>'500','message'=>'Unexpected Error']],500)->header('Content-Type', 'application/json');
        }
    }

    public function indexPerUser(Request $request)
    {
        try{
            $request = $request->only(['email']);
            $info = DB::table('users')->select('id')->where('email',$request['email'])->first();
            $activity = Activity::where('id_user',$info->id)->orderBy('created_at','DESC')->get();
            if(!$activity){
                return response(['status'=>['code'=>'404','message'=>'Not Found']],404)->header('Content-Type', 'application/json');
            }
            return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$activity]);
        }catch(Exception $e){
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
            $request = $request->only(['email','aktivitas']);

            if($request['email'] == null || $request['aktivitas'] == null){
                return response(['status'=>['code'=>'400','message'=>'No user or activity specified']],400)->header('Content-Type', 'application/json');
            }

            $info = DB::table('users')->select('id')->where('email',$request['email'])->first();

            $activity = Activity::create([
                'id_user' => $info->id,
                'activity' => $request['aktivitas']
            ]);

            if($activity){
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
            $activity = Activity::where('id',$id)->first();
            if(!$activity){
                return response(['status'=>['code'=>'404','message'=>'Not Found']],404)->header('Content-Type', 'application/json');
            }
            return response()->json(['status'=>['code'=>'200','message'=>'OK'],'result'=>$activity]);
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
