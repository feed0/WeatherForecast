//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 22/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            
            DayForecast(day: "Wed", isRainy: true, high: 50, low: 10)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            Color.blue
        } else {
            Color.yellow
        }
    }
        
    var body: some View {
        VStack {
            Text(day)
                .font(Font.largeTitle)
            
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .padding(5)
            
            VStack(alignment: .trailing) {
                Text("High: \(high)º")
                    .fontWeight(Font.Weight.semibold)
                Text("Low: \(low)º")
                    .fontWeight(Font.Weight.medium)
                    .foregroundStyle(Color.secondary)
            }
            
        }
        .padding()
    }
}
