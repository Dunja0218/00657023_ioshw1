//
//  ContentView.swift
//  ioshw_1
//
//  Created by User05 on 2019/9/21.
//  Copyright © 2019 Yi-Chien Wang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Group {
                Text("魔法公主的樹精靈").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold).foregroundColor(Color(hue: 0.254, saturation: 0.622, brightness: 0.672)).offset(x:0, y:200)
                    
            }
            
            Group {
                // 臉型
                Path{
                    (path) in
                    path.move(to: CGPoint(x: 158, y: 60))
                    
                    path.addQuadCurve(to: CGPoint(x: 30, y: 160), control: CGPoint(x: 90, y: 60))
                    path.addQuadCurve(to: CGPoint(x: 233, y: 245), control: CGPoint(x: 10, y: 250))
                    path.addQuadCurve(to: CGPoint(x: 300, y: 150), control: CGPoint(x: 320, y: 210))
                    path.addQuadCurve(to: CGPoint(x: 200, y: 60), control: CGPoint(x: 250, y: 60))
                    path.closeSubpath()
                }
                .stroke(lineWidth: 5)
                
            }
            
            Group {
                // 眼睛 嘴巴
                Path{
                    (path) in
                    path.addEllipse(in: CGRect(x: 120, y: 90, width: 33, height: 33))
                    path.addEllipse(in: CGRect(x: 240, y: 160, width: 45, height: 45))
                    path.addEllipse(in: CGRect(x: 90, y: 195, width: 27, height: 27))
                }
                .fill(Color(red: 0, green: 0, blue: 0))
                
                Path{
                    (path) in
                    path.move(to: CGPoint(x: 180, y: 110))
                    path.addQuadCurve(to: CGPoint(x: 200, y: 125), control: CGPoint(x: 170, y: 130))
                }
                .stroke(lineWidth: 5)
                .offset(x: -3, y: 13)
                Group {
                    //右手
                    Path{
                        (path)in
                        path.move(to: CGPoint(x: 210, y: 245))
                        path.addQuadCurve(to: CGPoint(x: 250, y: 300), control: CGPoint(x: 250, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 250, y: 435), control: CGPoint(x: 270, y: 440))
                        path.addQuadCurve(to: CGPoint(x: 290, y: 460), control: CGPoint(x: 300, y: 450))
                        path.addQuadCurve(to: CGPoint(x: 236, y: 450), control: CGPoint(x: 270, y: 480))
                   
                    }
                    .stroke(lineWidth: 5)
                    //左手
                    Path{
                        (path)in
                        path.move(to: CGPoint(x: 110, y: 238))
                        path.addQuadCurve(to: CGPoint(x: 70, y: 287), control: CGPoint(x: 70, y: 267))
                        path.addQuadCurve(to: CGPoint(x: 70, y: 435), control: CGPoint(x: 50, y: 410))
                        path.addQuadCurve(to: CGPoint(x: 40, y: 440), control: CGPoint(x: 60, y: 435))
                        path.addQuadCurve(to: CGPoint(x: 40, y: 460), control: CGPoint(x: 30, y: 460))
                        path.addQuadCurve(to: CGPoint(x: 100, y: 450), control: CGPoint(x: 40, y: 470))
                  
                    }
                    .stroke(lineWidth: 5)
                }
                Group {
                    //右腳
                    Path{
                        (path)in
                        path.move(to: CGPoint(x: 235, y: 450))
                        path.addQuadCurve(to: CGPoint(x: 240, y: 420), control: CGPoint(x: 240, y: 450))
                        path.addQuadCurve(to: CGPoint(x: 225, y: 350), control: CGPoint(x: 240, y: 380))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 354), control: CGPoint(x: 200, y: 330))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 470), control: CGPoint(x: 165, y: 400))
                        path.addQuadCurve(to: CGPoint(x: 235, y: 450), control: CGPoint(x: 230, y: 500))
                        path.closeSubpath()
                    }
                    .stroke(lineWidth: 5)
                    
                    Group {
                        //左腳
                        Path{
                            (path)in
                            path.move(to: CGPoint(x: 155, y: 470))
                            path.addQuadCurve(to: CGPoint(x: 155, y: 350), control: CGPoint(x: 170, y: 400))
                            path.addQuadCurve(to: CGPoint(x: 100, y: 360), control: CGPoint(x: 120, y: 330))
                            path.addQuadCurve(to: CGPoint(x: 120, y: 480), control: CGPoint(x: 80, y: 440))
                            path.addQuadCurve(to: CGPoint(x: 155, y: 470), control: CGPoint(x: 140, y: 490))
                            path.closeSubpath()
                        }
                        .stroke(lineWidth: 5)
                        
                    }
                    Path{
                        // 腋下
                        (path)in
                        path.move(to: CGPoint(x: 210, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 210, y: 340), control: CGPoint(x: 222, y: 340))
                    }.stroke(lineWidth: 5)
                    
                    Path{
                        // 腋下
                        (path)in
                        path.move(to: CGPoint(x: 110, y: 300))
                        path.addQuadCurve(to: CGPoint(x: 110, y: 350), control: CGPoint(x: 90, y: 340))
                    }.stroke(lineWidth: 5)
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
