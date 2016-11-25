//
//  LivingViewController.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/17.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit

class LivingViewController: UIViewController {

    var live:LiveCell!
    var playerView:UIView!
    var ijkPlayer:IJKMediaPlayback!
    var backGroundView = UIImageView()
    var backBtn = UIButton()
    var giftBtn = UIButton()
    var likeBtn = UIButton()
    var loadingText = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        setPlayerView()
        bringBtnToFront()
    }
    
    func initView(){
        backBtn = UIButton(frame: CGRect(x: 10, y: 20, width: 40, height: 40))
        backBtn.setImage(UIImage(named:"goback"), for: .normal)
        backBtn.addTarget(self, action: #selector(backTopView), for: .touchUpInside)
        giftBtn = UIButton(frame: CGRect(x: 10, y: 0, width: 50, height: 50))
        giftBtn.frame.origin.y = MAIN_HEIGHT - 60
        giftBtn.setImage(UIImage(named:"gift"), for: .normal)
        giftBtn.addTarget(self, action: #selector(sendGift(_:)), for: .touchUpInside)
        likeBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        likeBtn.frame.origin.x = MAIN_WIDTH - 50
        likeBtn.frame.origin.y = MAIN_HEIGHT - 50
        likeBtn.setImage(UIImage(named:"点赞"), for: .normal)
        likeBtn.addTarget(self, action: #selector(tapLike(_:)), for: .touchUpInside)
        loadingText = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        loadingText.center = self.view.center
        loadingText.text = "正在加载..."
        loadingText.textColor = UIColor.white
        backGroundView = UIImageView(frame: self.view.frame)
        let backImgUrl = URL(string: imgUrl + live.largeportraot + ".jpg")
        let blurEffect = UIBlurEffect(style: .light)
        let effectView = UIVisualEffectView(effect: blurEffect)
        effectView.frame = backGroundView.bounds
        backGroundView.kf.setImage(with: backImgUrl)
        self.view.addSubview(backGroundView)
        self.view.addSubview(loadingText)
        self.view.addSubview(backBtn)
        self.view.addSubview(giftBtn)
        self.view.addSubview(likeBtn)
        backGroundView.addSubview(effectView)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if !self.ijkPlayer.isPlaying(){
            ijkPlayer.prepareToPlay()
        }
    }
    
    func setPlayerView(){
        self.playerView = UIView(frame: view.bounds)
        self.view.addSubview(self.playerView)
        ijkPlayer = IJKFFMoviePlayerController(contentURLString: live.url, with: nil)
        let pv = ijkPlayer.view!
        pv.frame = playerView.bounds
        pv.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        playerView.insertSubview(pv, at: 1)
        //btnLike.insertSubview(pv, at: 1)
        ijkPlayer.scalingMode = .aspectFill
    }

    func bringBtnToFront(){
        view.bringSubview(toFront: likeBtn)
        view.bringSubview(toFront: backBtn)
        view.bringSubview(toFront: giftBtn)
    }
    
    func backTopView(){
        self.ijkPlayer.shutdown()
        navigationController?.popViewController(animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func sendGift(_ sender:Any){
        let duration = 3.0
        let car = UIImageView(image: #imageLiteral(resourceName: "porsche"))
        car.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(car)
        
        let widthCar:CGFloat = 250
        let heightCar:CGFloat = 125
        UIView.animate(withDuration: duration) {
            car.frame = CGRect(x: self.view.center.x - widthCar/2, y: self.view.center.y - heightCar/2, width: widthCar, height: heightCar)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration){
            UIView.animate(withDuration: duration, animations: {
                car.alpha = 0
            }, completion:{(completed) in
                car.removeFromSuperview()
            })
        }
        let layerFw = CAEmitterLayer()
        view.layer.addSublayer(layerFw)
        emmitParticles(from: (sender as AnyObject).center, emitter: layerFw, in: view)
        DispatchQueue.main.asyncAfter(deadline: .now() + duration){
            layerFw.removeFromSuperlayer()
        }
    }
    
    func tapLike(_ sender:Any){
        let heart = DMHeartFlyView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        heart.center = CGPoint(x: likeBtn.frame.origin.x, y: likeBtn.frame.origin.y)
        self.view.addSubview(heart)
        heart.animate(in: self.view)
        
        let btnAnime = CAKeyframeAnimation(keyPath: "transform.scale")
        btnAnime.values = [1.0,0.7,0.5,0.3,0.5,0.7,1.0,1.2,1.4,1.2,1.0]
        btnAnime.keyTimes = [0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]
        btnAnime.duration = 0.2
        (sender as AnyObject).layer.add(btnAnime,forKey:"SHOW")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
