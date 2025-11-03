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
            DayForecastView(day: "Mon",
                        isRainy: false,
                        high: 80,
                        low: 50)
            
            DayForecastView(day: "Tue",
                        isRainy: true,
                        high: 81,
                        low: 40)
            
            DayForecastView(day: "Wed",
                        isRainy: true,
                        high: 50,
                        low: 10)
        }
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
