//
//  ViewController.swift
//  memoApp
//
//  Created by 中村泰輔 on 2019/08/03.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
//    メモ
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//    textViewがUITextViewDelegateを使えるようにします。
        textView.delegate = self
        
//        AppDelegateを参照するための定数
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    AppDelegateに定義したlastTextを参照し、textViewに格納します
        textView.text = appDelegate.lastText
    }
//  TextViewに何か入力されたら動作します
    func textViewDidChange(_ textView: UITextView) {
//        AppDelegateを呼び出して格納
        let appDelgate = UIApplication.shared.delegate as! AppDelegate
//        AppDelegateに記述した"lastText"に入力内容を格納します
        appDelgate.lastText = textView.text
    }
    
    
    @IBAction func tappedDeleteButton(_ sender: Any) {
        
    }
    
/** コメントを入れる際は、最初にスペースを開けておく事を意識する

    command + i でインデントを揃える事を意識する
    全選択して、commnad + a で確認
*/

}

