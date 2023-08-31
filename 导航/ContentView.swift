//
//  ContentView.swift
//  导航
//
//  Created by Fengchen on 2023/8/19.
//

import SwiftUI

struct ContentView: View {
  @State private var username = ""
  @State private var email = ""
  @State private var password = ""

  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal Information")) {
          TextField("Username", text: $username)
          TextField("Email", text: $email)
        }

        Section(header: Text("Login Credentials")) {
          SecureField("Password", text: $password)
        }

        Section {
          Button(action: register) {
            Text("Register")
          }
        }
      }
      .navigationTitle("Registration Form")
    }
  }

  func register() {
    // Implement registration functionality here
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
