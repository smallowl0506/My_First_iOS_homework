//
//  ContentView.swift
//  My_First_iOS_homework
//
//  Created by User05 on 2020/3/19.
//  Copyright © 2020 steven. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //參照同學的建議 利用ZStack特性 將欲描的圖擺在底層就很清楚知道現在在做什麼
            //Image("Kabi")
              //  .resizable()
              //  .scaledToFit()
              //  .frame(width: 300,height: 300)
            
            
            //加上背景圖片和文字
            Image("Background")
                .resizable()
            Text("夜空中的星之卡比")
            .font(.largeTitle)
            .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            .position(x:210,y:185)
            
            Group {
                Group {
                     //右邊的手（他的左手）
                    Path { (path) in
                       path.move(to: CGPoint(x:300, y:416))
                       path.addQuadCurve(to: CGPoint(x: 352, y:380), control: CGPoint(x: 360, y: 420))
                       path.addQuadCurve(to: CGPoint(x:307,y:340), control: CGPoint(x:350,y:360))
                       path.closeSubpath()
                    }
                    .fill(Color(red: 253/255, green: 170/255, blue: 208/255))
                    //左邊的手（他的右手）
                    Path { (path) in
                       path.move(to: CGPoint(x:92, y:367))
                       path.addQuadCurve(to: CGPoint(x: 62, y:320), control: CGPoint(x: 66, y: 360))
                       path.addQuadCurve(to: CGPoint(x: 120, y:300), control: CGPoint(x: 80, y: 280))
                       path.closeSubpath()
                    }
                    .fill(Color(red: 253/255, green: 170/255, blue: 208/255))
                }
                
                
                Group {
                    //左邊的腳（他的右腳）
                    Path { (path) in
                       path.move(to: CGPoint(x:165, y:470))
                       path.addQuadCurve(to: CGPoint(x: 80, y:480), control: CGPoint(x: 100, y: 515))
                       path.addQuadCurve(to: CGPoint(x: 102, y:412), control: CGPoint(x: 70, y: 430))
                       path.closeSubpath()
                    }
                    .fill(Color(red: 227/255, green: 50/255, blue: 91/255))
                    //右邊的腳（他的左腳）
                    Path { (path) in
                       path.move(to: CGPoint(x:192, y:477))
                       path.addQuadCurve(to: CGPoint(x: 230, y:558), control: CGPoint(x: 180, y: 540))
                       path.addQuadCurve(to: CGPoint(x: 288, y:432), control: CGPoint(x: 290, y: 550))
                       path.closeSubpath()
                    }
                    .fill(Color(red: 227/255, green: 50/255, blue: 91/255))
                }
                
                //圓圓身體
                Path { (path) in
                    path.addArc(center: CGPoint(x:202,y:369), radius: 108, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
                    
                }.fill(Color(red: 253/255, green: 170/255, blue: 208/255))
                
                //左邊眼睛（他的右眼）
                Group {
                    Path { (path) in
                       path.move(to: CGPoint(x:140, y:311))
                       path.addQuadCurve(to: CGPoint(x: 130, y:350), control: CGPoint(x: 120, y: 320))
                       path.addQuadCurve(to: CGPoint(x: 148, y:380), control: CGPoint(x: 138, y: 380))
                       path.addQuadCurve(to: CGPoint(x: 155, y:340), control: CGPoint(x: 160, y: 380))
                       path.addQuadCurve(to: CGPoint(x: 140, y:311), control: CGPoint(x: 152, y: 316))
                       path.closeSubpath()
                    }.fill(Color.black)
                   Path { (path) in
                        //眼珠
                        path.move(to: CGPoint(x:140, y:316))
                        path.addQuadCurve(to: CGPoint(x: 140, y:342), control: CGPoint(x: 123, y: 325))
                        path.addQuadCurve(to: CGPoint(x: 140, y:316), control: CGPoint(x: 153, y: 328))
                        path.closeSubpath()
                   }.fill(Color.white)
                    Path { (path) in
                        //眼睛下方
                        path.move(to: CGPoint(x:148, y:380))
                        path.addQuadCurve(to: CGPoint(x: 154, y:352), control: CGPoint(x: 160, y: 375))
                        path.addLine(to: CGPoint(x:130,y:352))
                        path.addQuadCurve(to: CGPoint(x: 148, y:380), control: CGPoint(x: 138, y: 376))
                        path.closeSubpath()
                   }.fill(Color(red: 34/255, green: 43/255, blue: 176/255))
                }
                
                //右邊眼睛（他的左眼）
                Group {
                    Path { (path) in
                       path.move(to: CGPoint(x:188, y:295))
                       path.addQuadCurve(to: CGPoint(x: 180, y:340), control: CGPoint(x: 170, y: 300))
                       path.addQuadCurve(to: CGPoint(x: 200, y:366), control: CGPoint(x: 181, y: 362))
                       path.addQuadCurve(to: CGPoint(x: 206, y:326), control: CGPoint(x: 210, y: 366))
                       path.addQuadCurve(to: CGPoint(x: 188, y:295), control: CGPoint(x: 203, y: 304))
                       path.closeSubpath()
                    }.fill(Color.black)
                    Path { (path) in
                    //眼珠
                    path.move(to: CGPoint(x:186, y:302))
                    path.addQuadCurve(to: CGPoint(x: 190, y:327), control: CGPoint(x: 172, y: 316))
                    path.addQuadCurve(to: CGPoint(x: 186, y:302), control: CGPoint(x: 205, y: 312))
                    }.fill(Color.white)
                    Path { (path) in
                    //眼睛下方
                    path.move(to: CGPoint(x:200, y:366))
                    path.addQuadCurve(to: CGPoint(x: 206, y:342), control: CGPoint(x: 210, y: 363))
                    path.addLine(to: CGPoint(x:180,y:345))
                    path.addQuadCurve(to: CGPoint(x: 200, y:366), control: CGPoint(x: 185, y: 365))
                    path.closeSubpath()
                    }.fill(Color(red: 34/255, green: 43/255, blue: 176/255))
                }
                
                //左邊臉頰（他的右頰）
                Path { (path) in
                    path.move(to: CGPoint(x:110, y:395))
                    path.addQuadCurve(to: CGPoint(x: 137, y:392), control: CGPoint(x: 120, y: 370))
                    path.addQuadCurve(to: CGPoint(x: 110, y:395), control: CGPoint(x: 120, y: 410))
                    path.closeSubpath()
                }
                 .fill(Color(red: 250/255, green: 98/255, blue: 172/255))
                //右邊臉頰（他的左頰）
                Path { (path) in
                    path.move(to: CGPoint(x:218, y:360))
                    path.addQuadCurve(to: CGPoint(x: 255, y:352), control: CGPoint(x: 230, y: 335))
                    path.addQuadCurve(to: CGPoint(x: 218, y:360), control: CGPoint(x: 240, y: 380))
                    path.closeSubpath()
                }
                 .fill(Color(red: 250/255, green: 98/255, blue: 172/255))
                
                Group {
                    //嘴巴
                    Path { (path) in
                        path.move(to: CGPoint(x:184, y:404))
                        path.addQuadCurve(to: CGPoint(x:192, y:374), control: CGPoint(x: 200, y: 388))
                        path.addQuadCurve(to: CGPoint(x:160, y:382), control: CGPoint(x: 180, y: 366))
                        path.addQuadCurve(to: CGPoint(x:184, y:404), control: CGPoint(x: 164, y:402))
                        path.closeSubpath()
                    }
                    .fill(Color(red: 162/255, green: 10/255, blue: 19/255))
                    //嘴巴內層
                    Path { (path) in
                        path.move(to: CGPoint(x:184, y:404))
                        path.addQuadCurve(to: CGPoint(x:192, y:379), control: CGPoint(x: 200, y: 388))
                        path.addQuadCurve(to: CGPoint(x:166, y:392), control: CGPoint(x: 180, y: 376))
                        path.addQuadCurve(to: CGPoint(x:184, y:404), control: CGPoint(x: 168, y:402))
                        path.closeSubpath()
                    }
                    .fill(Color(red: 233/255, green: 63/255, blue: 61/255))
                }
                
            }
            
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//遵從 protocol Shape，定義可重覆使用修改的形狀
struct Eye: Shape{
    func path(in rect: CGRect) -> Path {
        Path { (path) in
           path.move(to: CGPoint(x:140, y:311))
           path.addQuadCurve(to: CGPoint(x: 130, y:350), control: CGPoint(x: 120, y: 320))
           path.addQuadCurve(to: CGPoint(x: 148, y:380), control: CGPoint(x: 138, y: 380))
           path.addQuadCurve(to: CGPoint(x: 155, y:340), control: CGPoint(x: 160, y: 380))
           path.addQuadCurve(to: CGPoint(x: 140, y:311), control: CGPoint(x: 152, y: 316))
           path.closeSubpath()
        }
    }
    
    
}


//使用到 Extract Subview，至少有 2 個遵從 protocol View 的型別
struct RectangleNoFillView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .position(x:pos_x,y:pos_y)
    }
}

struct RectangleView: View {
    var pos_x: CGFloat
    var pos_y: CGFloat
    var width: CGFloat
    var height: CGFloat
    var red: Double
    var green: Double
    var blue: Double
    var body: some View {
        Rectangle()
            .fill(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(width: width, height: height)
            .position(x:pos_x,y:pos_y)
    }
}

