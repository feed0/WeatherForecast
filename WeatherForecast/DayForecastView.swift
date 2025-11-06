//
//  DayForecastView.swift
//  WeatherForecast
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 03/11/25.
//

import SwiftUI

struct DayForecastView: View {
    
    // MARK: - Properties
    
    // MARK: stored properties
    
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    // MARK: computed properties
    
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
            dayOfTheWeekTextSubview
            weatherConditionIconSubview
            
            highAndLowTemperaturesOfTheDaySubview
        }
        .padding()
    }
    
    // MARK: - Subviews
    
    @ViewBuilder
    private var dayOfTheWeekTextSubview: some View {
        Text(day)
            .font(Font.largeTitle)
    }
    
    @ViewBuilder
    private var weatherConditionIconSubview: some View {
        Image(systemName: iconName)
            .foregroundStyle(iconColor)
            .padding(5)
    }
    
    @ViewBuilder
    private var highAndLowTemperaturesOfTheDaySubview:some View {
        VStack(alignment: .trailing) {
            highTemperatureOfTheDaySubview
            lowTemperatureOfTheDaySubview
        }
    }
    
    @ViewBuilder
    private var highTemperatureOfTheDaySubview: some View {
        Text("High: \(high)º")
            .fontWeight(Font.Weight.semibold)
            .foregroundStyle(highTemperatureColor)

    }
    
    @ViewBuilder
    private var lowTemperatureOfTheDaySubview: some View {
        Text("Low: \(low)º")
            .fontWeight(Font.Weight.medium)
            .foregroundStyle(Color.secondary)

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
