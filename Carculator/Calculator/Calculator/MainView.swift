//
//  MainView.swift
//  Calculator
//
//  Created by 정성윤 on 2023/03/26.
//

import SwiftUI
import UIKit
struct MainView: View {
    @State var total : String = "0"
    @State var be : Int = 0
    @State var af : Int = 0
    @State var tempNumber : Int = 0
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text(total)
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 73))
                }
                HStack{
                    Button("C"){
                        total = "0"
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.668))
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size:30))
                    Button("/"){
                            if(total == "0"){
                                total = "/"}
                            else{
                                total += "/"
                            }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.668))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("%"){
                        if(total == "0"){
                            total = "%"}
                        else{
                            total += "%"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.668))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    //test
                    Button("$"){
                        if(total == "0"){
                            total = "$"}
                        else{
                            total += "$"
                        }
                    }.frame(width: 80,height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                }
                HStack{
                    Button("7"){
                        if(total == "0"){
                            total = "7"}
                        else{
                            total += "7"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("8"){
                        if(total == "0"){
                            total = "8"}
                        else{
                            total += "8"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("9"){
                        if(total == "0"){
                            total = "9"}
                        else{
                            total += "9"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("X"){
                        if(total == "0"){
                            total = "X"}
                        else{
                            total += "X"
                        }
                    }.frame(width: 80,height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                }
                HStack{
                    Button("4"){
                        if(total == "0"){
                            total = "4"}
                        else{
                            total += "4"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("5"){
                        if(total == "0"){
                            total = "5"}
                        else{
                            total += "5"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("6"){
                        if(total == "0"){
                            total = "6"}
                        else{
                            total += "6"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("-"){
                        if(total == "0"){
                            total = "-"}
                        else{
                            total += "-"
                        }
                    }.frame(width: 80,height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                }
                HStack{
                    Button("1"){
                        if(total == "0"){
                            total = "1"}
                        else{
                            total += "1"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("2"){
                        if(total == "0"){
                            total = "2"}
                        else{
                            total += "2"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("3"){
                        if(total == "0"){
                            total = "3"}
                        else{
                            total += "3"
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("+"){
                        if(total == "0"){
                            total = "+"}
                        else{
                            total += "+"
                        }
                    }.frame(width: 80,height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                }
                HStack{
                    Button("0\t\t\t\t"){
                        if(total == "0"){
                            total = "0"}
                        else{
                            total += "0"
                        }
                    }.frame(width: 160,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("."){
                        if(total == "0"){
                            total = "."}
                        else{
                            total += "."
                        }
                    }.frame(width: 80,height: 80)
                        .background(Color(hue: 1.0, saturation: 0.026, brightness: 0.401))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                    Button("="){
                        var b : String = ""
                        var a : String = ""
                        var tmp : Int = 0
                        var temp : Int = 0
                        var c = Array(total)
                        for i in c{
                            tmp += 1
                            if(i >= "0" && i <= "9"){
                                b.append(i)
                            }
                            else{
                                break
                            }
                        }
                        let startIndex = c.index(c.startIndex, offsetBy: tmp)
                        for i in startIndex..<c.endIndex{
                            temp += 1
                            if(c[i] >= "0" && c[i] <= "9"){
                                a.append(c[i])
                            }
                            else{
                                break
                            }
                        }
                        be = Int(b) ?? 0
                        af = Int(a) ?? 0
                        if(c[tmp-1] == "X"){
                            tempNumber = be * af
                            total = String(tempNumber)
                        }
                        else if(c[tmp-1] == "/"){
                            tempNumber = be / af
                            total = String(tempNumber)
                        }
                        else if(c[tmp-1] == "%"){
                            tempNumber = be % af
                            total = String(tempNumber)
                        }
                        else if(c[tmp-1] == "+"){
                            tempNumber = be + af
                            total = String(tempNumber)
                        }
                        else if(c[tmp-1] == "-"){
                            tempNumber = be - af
                            total = String(tempNumber)
                        }
                    }.frame(width: 80,height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:30))
                }
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
