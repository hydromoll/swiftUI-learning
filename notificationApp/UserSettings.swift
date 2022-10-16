//
//  UserSettings.swift
//  notificationApp
//
//  Created by Hydromoll on 14.10.2022.
//

import SwiftUI

class UserSettingsObj:ObservableObject{
    @Published var score = 0
}

struct UserSettings: View {
    var a = UserSettingsObj()
    var body: some View {
        Text("Hello your score is \(a.score)")
    }
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        UserSettings()
    }
}
