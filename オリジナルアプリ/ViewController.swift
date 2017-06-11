//
//  ViewController.swift
//  オリジナルアプリ
//
//  Created by moeka on 2017/05/27.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    var imgArray:[UIImage] = []

    
    
    @IBOutlet var imageView : UIImageView!
    @IBOutlet var heartButton: DOFavoriteButton!
    
    
    
    // UIButton のインスタンスを生成
    let button = UIButton()
    
    
    
    @IBOutlet var scorelabel: UILabel!
    var number = String()
    var countnum = 1
    
    @IBOutlet var label: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = (self.view.frame.width) / 2
        var x = width / 2
        let y = self.view.frame.height / 2
        // heart button
        let heartButton = DOFavoriteButton(frame: CGRect(x: x, y: y, width: 170, height: 170), image: UIImage(named: "41927.jpg"))
        heartButton.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2 + 150)
        heartButton.imageColorOn = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        heartButton.circleColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        heartButton.lineColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        heartButton.addTarget(self, action: #selector(self.tappedButton), for: .touchDown)
        self.view.addSubview(heartButton)
        x += width
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tappedButton(sender: DOFavoriteButton) {
        sender.select()
        
        
        // 表示する画像を設定する.
        imageView = UIImageView(frame: CGRect(x:0,y:0,width:30,height:30))
        
        // 表示する画像を設定する.
        let myImage = UIImage(named: "いろ.png")
        
        // 画像をUIImageViewに設定する.
        imageView.image = myImage
        
        // 画像の表示する座標を指定する.
        imageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 470)
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)

        
        UIView.animate(withDuration: 1, animations:{
            self.imageView.frame.origin.y -= 230
        }, completion: nil)
        
        
        
        
        scorelabel.text = String(countnum)
        countnum += 1
        
        
        if countnum >= 50{
            label.text = "4"
        }else if countnum >= 30{
            label.text = "3"
        }else if countnum >= 11{
            label.text = "2"
        }else if countnum == 0{
            label.text = "1"
        }
    }
}
