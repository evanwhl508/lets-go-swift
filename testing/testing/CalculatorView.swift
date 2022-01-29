//
//  CalculatorView.swift
//  testing
//
//  Created by Evan on 15/1/2022.
//

import SwiftUI

struct CalculatorView: View {
    @State var value: String = "0"
    @State var action: String = ""
    let operatorList = "+-x/"
    let signList = ["+", "-", "x", "/", ".", "%"]
    
    var body: some View {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        if #available(iOS 15.0, *) {
            VStack {
                Text("\(value)")
                    .keyboardType(.numberPad)
                    .frame(width: width, height: height*0.3, alignment: .bottomTrailing)
                    .foregroundColor(.white)
                    .font(.system(size: 70))
                HStack {
                    Button(action:
                    {
                        value = "0"
                    }) {
                        Text("C")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton1())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value.starts(with: "-")){
                            value.removeFirst()
                        } else {
                            value = "-" + value
                        }
                    }) {
                        Text("+/-")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton1())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        
                    }) {
                        Text("%")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton1())
                    .frame(maxWidth: width / 4, maxHeight: height*0.13)
                    Button(action: {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "/"
                        }
                        action = "/"
                    }) {
                        Text("/")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                }
                .frame(width: .infinity, height: height*0.13, alignment: .center)
                HStack {
                    Button(action: {
                        if (value != "0") {
                            value += "7"
                        } else {
                            value = "7"
                        }
                    }) {
                        Text("7")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "8"
                        } else {
                            value = "8"
                        }
                    }) {
                        Text("8")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "9"
                        } else {
                            value = "9"
                        }
                    }) {
                        Text("9")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "x"
                        }
                        action = "x"
                    }) {
                        Text("x")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                }
                .frame(width: .infinity, height: height*0.13, alignment: .center)
                HStack {
                    Button(action: {
                        if (value != "0") {
                            value += "4"
                        } else {
                            value = "4"
                        }
                    }) {
                        Text("4")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "5"
                        } else {
                            value = "5"
                        }
                    }) {
                        Text("5")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "6"
                        } else {
                            value = "6"
                        }
                    }) {
                        Text("6")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "-"
                        }
                        action = "-"
                    }) {
                        Text("-")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                }
                .frame(width: .infinity, height: height*0.13, alignment: .center)
                HStack {
                    Button(action: {
                        if (value != "0") {
                            value += "1"
                        } else {
                            value = "1"
                        }
                    }) {
                        Text("1")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "2"
                        } else {
                            value = "2"
                        }
                    }) {
                        Text("2")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0") {
                            value += "3"
                        } else {
                            value = "3"
                        }
                    }) {
                        Text("3")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "+"
                        }
                        action = "+"
                    }) {
                        Text("+")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                }
                .buttonStyle(CalculatorButton3())
                .frame(width: .infinity, height: height*0.13, alignment: .center)
                HStack {
                    Button(action: {
                        if (value != "0") {
                            value += "0"
                        } else {
                            value = "0"
                        }
                    }) {
                        Text("0")
                            .frame(maxWidth: width * 0.35, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 2, minHeight: height*0.13)
                    Button(action: {
                        if (value != "0" && !signList.contains("\(value.last!)") && !["."].contains("\(value.last!)")) {
                            value += "."
                        }
                    }) {
                        Text(".")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                    Button(action: {
                        var is_negative = false
                        if (value.starts(with: "-")){
                            value.removeFirst()
                            is_negative = true
                        }
                        let arr = value.components(separatedBy: CharacterSet(charactersIn: operatorList))
                            .map(Double.init)
                        var num1 = arr[0]!
                        let num2 = arr[1]!
                        if (is_negative) {
                            num1 = arr[0]! * -1
                        }
                        if (action == "+") {
                            value = String(num1 + num2)
                        } else if (action == "-") {
                            value = String(num1 - num2)
                        } else if (action == "x") {
                            value = String(num1 * num2)
                        } else if (action == "/") {
                            value = String(num1 / num2)
                        } else {
                            
                        }
                        
                    }) {
                        Text("=")
                            .frame(maxWidth: width * 0.15, maxHeight: height * 0.07)
                            .font(.largeTitle)
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(minWidth: width / 4, minHeight: height*0.13)
                }
                .frame(width: .infinity, height: height*0.13, alignment: .center)
            }.background(.black)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
