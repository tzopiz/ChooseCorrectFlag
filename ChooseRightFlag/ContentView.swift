//
//  ContentView.swift
//  ChooseRightFlag
//
//  Created by Дмитрий Корчагин on 04.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = Country.data
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showScore = false
    @State private var scoreTitle = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.indigo, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack(spacing: 7) {
                    Text("Choose a flag")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .shadow(color: Color.black, radius: 7, x: 3, y: 3)
                    Text("\(countries[correctAnswer].1)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: Color.black, radius: 7, x: 3, y: 3)
                    Text("Score: \(score)")
                        .font(.callout)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .shadow(color: Color.black, radius: 7, x: 3, y: 3)
                }
                Spacer()
                ForEach(0..<3) { index in
                    Button {
                        flagTapped(index)
                        showScore = true
                        ask()
                    } label: {
                        Image("\(countries[index].0)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 260, height: 130)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, style: StrokeStyle(lineWidth: 5)))
                            .shadow(radius: 10)
                    }
                }
                Spacer()
                Text("Best: \(UserDefaults.standard.bestScore)")
                    .font(.title3)
                    .foregroundColor(.white)
                    .shadow(color: Color.black, radius: 7, x: 3, y: 3)
            }
        }
    }

    func ask() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
        } else {
            UserDefaults.standard.bestScore = score
            score = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
