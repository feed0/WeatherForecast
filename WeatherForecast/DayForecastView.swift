//
//  DayForecastView.swift
//  WeatherForecast
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 03/11/25.
//

import SwiftUI

struct DayForecastView: View {
    
    // MARK: - Properties
    
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
    
    var highTemperatureColor: Color {
        if high > 80 {
            Color.red
        } else {
            Color.black
        }
    }
    
    // MARK: - Body
    
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
                    .foregroundStyle(highTemperatureColor)
                
                Text("Low: \(low)º")
                    .fontWeight(Font.Weight.medium)
                    .foregroundStyle(Color.secondary)
            }
            
        }
        .padding()
    }
}

// MARK: - Preview

#Preview {
    
    Text("High <= 80 | Sunnny")
    DayForecastView(day: "Mon",
                    isRainy: false,
                    high: 80,
                    low: 50)
    
    Divider()
    
    Text("High > 80 | Rainy")
    DayForecastView(day: "Tue",
                    isRainy: true,
                    high: 81,
                    low: 40)

}
