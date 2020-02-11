//
//  HomeView.swift
//  WeatherForecast
//
//  Created by Leo Wirasanto on 11/02/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var weatherData: [Weather] = [
        Weather(image: "", temp: 28, city: "Indonesia"),
        Weather(image: "", temp: 29, city: "Singapore"),
        Weather(image: "", temp: 29, city: "Malaysia"),
        Weather(image: "", temp: 31, city: "Thailand")
    ]
    
    var body: some View {
        NavigationView() {
            List(weatherData) { weather in
                NavigationLink(destination: Text(weather.city).font(.largeTitle)) {
                    HStack {
                        Image(systemName: weather.image)
                            .frame(width: 50, height: 10, alignment: .leading)
                        Text("\(weather.temp)º")
                            .frame(width: 50, height: 10, alignment: .leading)
                        VStack {
                            Text(weather.city)
                        }
                    }.font(.title)
                }
            }
            .navigationBarTitle(Text("World Weather"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
