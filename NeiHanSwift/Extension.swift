//
//  Extension.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/21.
//  Copyright © 2016年 LCB. All rights reserved.
//

import Foundation
import UIKit

extension String{
    
    //MARK:获得string内容高度
    
    func stringHeightWith(fontSize:CGFloat,width:CGFloat)->CGFloat{
        
        let font = UIFont.systemFont(ofSize: fontSize)
        let size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        paragraphStyle.lineBreakMode = .byWordWrapping;
        
        let attributes = [NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy()]
        
        let text = self as NSString
        
        let rect = text.boundingRect(with: size, options:.usesLineFragmentOrigin, attributes: attributes, context:nil)
        
        return rect.size.height
        
    }
    
    
    //MARK:获得string内容size
     func getTextRectSize(text:NSString,font:UIFont,size:CGSize) -> CGRect {
        let attributes = [NSFontAttributeName: font]
        let option = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect:CGRect = text.boundingRect(with: size, options: option, attributes: attributes, context: nil)
        return rect
    }
    
}//extension end

func heightOfString(data:String,fontSize:CGFloat,width:CGFloat)->CGFloat{
    return data.stringHeightWith(fontSize: fontSize,width: width)

}
//获取string宽度
func widthOfString(data:String,fontSize:CGFloat)->CGFloat{
    return data.getTextRectSize(text: data as NSString, font: UIFont.systemFont(ofSize: fontSize), size: CGSize(width: 100, height: 18)).width
}

