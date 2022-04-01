//
//  Home.swift
//  MovieBanner
//
//  Created by 张亚飞 on 2022/3/31.
//

import SwiftUI

struct Home: View {
    
    // current index
    @State var currentIndex: Int = 0
    
    var body: some View {
        
        ZStack {
            TabView(selection: $currentIndex) {
                
                ForEach(posts.indices, id: \.self) { index in
                    
                    GeometryReader { proxy in
                        
                        Image(posts[index].postImg)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .cornerRadius(1)
                    }
                    .ignoresSafeArea()
                    .offset(y: -100)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentIndex)
            .overlay(
                
                LinearGradient(colors: [
                
                    Color.clear,
                    Color.black.opacity(0.2),
                    Color.white.opacity(0.4),
                    Color.white,
                    Color.white,
                    Color.white,
                ], startPoint: .top, endPoint: .bottom)
            )
            .ignoresSafeArea()
            
            //posts..
            SnapCarousel(trailingSpace: getRect().height < 750 ? 100 : 150 ,index: $currentIndex, items: posts) { post in
                
                CardView(post: post)
                
            }
            .offset(y: getRect().height / 4)
        }
        
    }
    
    @ViewBuilder
    func CardView(post: Post) -> some View {
        
        VStack(spacing: 10) {
            
            GeometryReader { proxy in
                
                Image(post.postImg)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .cornerRadius(25)
            }
            .padding(15)
            .background(Color.white)
            .cornerRadius(25)
            .frame(height: getRect().height / 2.5)
            .padding(.bottom, 15)
            
            Text(post.titile)
                .font(.title2.bold())
            
            HStack(spacing: 3) {
                
                ForEach(1...5, id: \.self) { index in
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(index <= post.starRating ? .yellow : .gray)
                }
                
                Text("(\(post.starRating).0)")
            }
            .font(.caption)
            
            Text(post.description)
                .font(.callout)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .padding(.top , 8)
                .padding(.horizontal)
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


// screen bounds
extension View {
    
    func getRect() -> CGRect {
        
        return UIScreen.main.bounds
    }
}
