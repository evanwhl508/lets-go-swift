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
                    .frame(width: width, height: height*0.3, alignment: .trailing)
                    .foregroundColor(.white)
                    .fixedSize()
                HStack {
                    Button("C")
                    {
                        value = "0"
                    }
                    .buttonStyle(CalculatorButton1())
                    .frame(maxWidth: width / 4)
                    Button("+/-") {}
                    .buttonStyle(CalculatorButton1())
                    Button("%") {}
                    .buttonStyle(CalculatorButton1())
                    .frame(maxWidth: width / 4)
                    Button("/") {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "/"
                        }
                        action = "/"
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(maxWidth: width / 4)
                }
                .frame(width: width, height: height*0.13, alignment: .center)
                HStack {
                    Button("7") {
                        if (value != "0") {
                            value += "7"
                        } else {
                            value = "7"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("8") {
                        if (value != "0") {
                            value += "8"
                        } else {
                            value = "8"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("9") {
                        if (value != "0") {
                            value += "9"
                        } else {
                            value = "9"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("x") {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "x"
                        }
                        action = "x"
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(maxWidth: width / 4)
                }
                .frame(width: width, height: height*0.13, alignment: .center)
                HStack {
                    Button("4") {
                        if (value != "0") {
                            value += "4"
                        } else {
                            value = "4"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("5") {
                        if (value != "0") {
                            value += "5"
                        } else {
                            value = "5"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("6") {
                        if (value != "0") {
                            value += "6"
                        } else {
                            value = "6"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("-") {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "-"
                        }
                        action = "-"
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(maxWidth: width / 4)
                }
                .frame(width: width, height: height*0.13, alignment: .center)
                HStack {
                    Button("1") {
                        if (value != "0") {
                            value += "1"
                        } else {
                            value = "1"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("2") {
                        if (value != "0") {
                            value += "2"
                        } else {
                            value = "2"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("3") {
                        if (value != "0") {
                            value += "3"
                        } else {
                            value = "3"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("+") {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "+"
                        }
                        action = "+"
                    }
                    .frame(maxWidth: width / 4)
                }
                .buttonStyle(CalculatorButton3())
                .frame(width: width, height: height*0.13, alignment: .center)
                HStack {
                    Button("0") {
                        if (value != "0") {
                            value += "0"
                        } else {
                            value = "0"
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 2)
                    Button(".") {
                        if (value != "0" && !signList.contains("\(value.last!)")) {
                            value += "."
                        }
                    }
                    .buttonStyle(CalculatorButton2())
                    .frame(maxWidth: width / 4)
                    Button("=") {
                        let arr = value.components(separatedBy: CharacterSet(charactersIn: operatorList))
                            .map(Int.init)
                        print("\(arr)")
                        print("\(action), \(value)")
                        if (action == "+") {
                            value = String(arr[0]! + arr[1]!)
                        } else if (action == "-") {
                            value = String(arr[0]! - arr[1]!)
                        } else if (action == "x") {
                            value = String(arr[0]! * arr[1]!)
                        } else if (action == "/") {
                            value = String(arr[0]! / arr[1]!)
                        } else {
                            value = value
                        }
                        
                    }
                    .buttonStyle(CalculatorButton3())
                    .frame(maxWidth: width / 4)
                }
                .frame(width: width, height: height*0.13, alignment: .center)
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
