//
//  LoginView.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 14/05/21.
//

import SwiftUI

struct LoginView : View {
    
    @State
    private var userName: String = ""
    
    @State
    private var pwd: String = ""
    
    @State
    private var isNight = false
    
    var body: some View {
        ZStack{
            BackGroundView(isNightBool: $isNight)
            VStack(alignment: .center, spacing: 10) {
                Image("avatar")
                    .clipShape(Circle())
                    .clipped()
                
                TextField("User name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $pwd)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button {
                    print("yup! it is clicked: \(userName) and pwd is: \(pwd)")
                } label: {
                    Text("Login")
                }
            }
        }
    }
}

//#if DEBUG
//struct LoginView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        LoginView()
//    }
//}
//#endif
