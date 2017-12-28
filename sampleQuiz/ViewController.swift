//
//  ViewController.swift
//  sampleQuiz
//
//  Created by s247 on 2017/12/28.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    //システムサウンドButtonの処理
    @IBAction func tapSystemSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(1000){
            //サウンドが鳴り終わった後に行う処理
        }
    }
    
    //カスタムサウンドButtonの処理
    @IBAction func tapCustomSound(_ sender: Any) {
        //指定するサウンドファイルの再生時間が30秒以下であること
        let soundUrl = Bundle.main.url(forResource: "button56", withExtension: "mp3")
        
        //サウンドIDを指定するための変数を準備
        var soundId:SystemSoundID = 0
        
        //サウンドファイルを登録してサウンドIDを取得
        AudioServicesCreateSystemSoundID(soundUrl as! CFURL, &soundId)
        AudioServicesPlaySystemSoundWithCompletion(soundId){
            
        }
    }
    
    //バイブレーションButtonの処理
    @IBAction func tapVibrationSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate){
            //Vibrationが終わったときにする処理
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

