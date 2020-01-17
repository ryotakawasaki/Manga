//
//  ContentView.swift
//  Manga1
//
//  Created by 川崎綾太 on 2020/01/10.
//  Copyright © 2020 Ryota Kawasaki. All rights reserved.
//

import SwiftUI

//上には虫眼鏡ボタン、よこにピッカー、その横に人ボタン→OK
//画像を配置(全てボタン)
//まず大きいやつ、text挟んで、それから小さめのやつ、text、またさらに
//とりあえずそれでいい
//したはたぶ。
//５種類用意
//１、オススメ
//２、無料
//３、単行本
//４、本棚
//５、インディーズ


//キャンセルで戻りたい！二回やってもできるようにしたい！


struct ContentView: View {
    
    @ObservedObject var stopwatch = Stopwatch()
    @State var isPlaying = false
    @State var isShowing = true
    
    
    var body: some View {
        NavigationView {
//                       NavigationLink(destination: SearchView())
//                       {
        GeometryReader {
                geometry in
        VStack {
            HStack {
                NavigationLink(destination: SearchView())
                    {
                Image(systemName: "magnifyingglass")
                    .padding()
                }
                
                
                
                Picker(selection: self.$isShowing, label: Text("What is your favorite color?")) {
                    Text("総合").tag(0)
                    Text("男性").tag(1)
                    Text("女性").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                .padding()
                
                
                
                NavigationLink(destination: PersonView()){
                Image(systemName: "person")
                .padding()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            Spacer()
  
            VStack {
                Image(systemName: "timer")
                    .resizable()
                    .frame(width: geometry.size.width / 3,
                           height: geometry.size.height / 4)
            
            
            Text("初回無料！残り\(self.stopwatch.counter)分")
                              .font(.largeTitle)
                              .fontWeight(.heavy)
                              .padding(.top, 50)
                }
            Spacer()
             HStack {
            Button(action: {
                      if !self.isPlaying {
                        self.stopwatch.start()
                        self.isPlaying = true}
                    }) {
                Text("Start")
                    }.disabled(self.isPlaying)
                
            Button(action: {
                    self.stopwatch.stop()
                    self.isPlaying = false})
            {
                Text("Stop")
            }.disabled(!self.isPlaying)
        }
        Spacer()
            
            HStack {
             VStack {
                    Text("ジャンプ作品")
                    
                    Button(
                            action: {
                                print("Tapped!")
                                    },
                            label: {
                                Image("janpu")
                                .resizable()
    //                            .padding()
                                    .frame(width: geometry.size.width / 2,
                                           height:geometry.size.height / 4)
                    }).buttonStyle(PlainButtonStyle())
                    }
                VStack {
                    Text("マガジン作品")
                    Button(
                            action: {
                                print("Tapped!")
                                    },
                            label: {
                                Image("magazine")
                                .resizable()
    //                            .padding()
                                .frame(width: geometry.size.width / 2,
                                    height:geometry.size.height / 4)
                    }).buttonStyle(PlainButtonStyle())
                }
            }
            
//            HStack {
//                     VStack {
//                            Text("ジャンプ作品")
//
//                            Button(
//                                    action: {
//                                        print("Tapped!")
//                                            },
//                                    label: {
//                                        Image("janpu")
//                                        .resizable()
//            //                            .padding()
//                                            .frame(width: geometry.size.width / 2,
//                                                   height:geometry.size.height / 4)
//                            }).buttonStyle(PlainButtonStyle())
//                            }
//                        VStack {
//                            Text("マガジン作品")
//                            Button(
//                                    action: {
//                                        print("Tapped!")
//                                            },
//                                    label: {
//                                        Image("magazine")
//                                        .resizable()
//            //                            .padding()
//                                        .frame(width: geometry.size.width / 2,
//                                            height:geometry.size.height / 4)
//                            }).buttonStyle(PlainButtonStyle())
//                        }
//            }
//
            
      
            }
////            Button(
////                action: {
////                    print("Tapped!")
////                },
////                label: {
////                    Image("one_piece")
////            })
////                .buttonStyle(PlainButtonStyle())
////            //なぜ()いる？
//
//            Text("人気急上昇中の連載作品")
//
//            HStack {
//                Button(
//                    action: {
//                        print("Tapped!")
//                    },
//                    label: {
//                    Image("usogui")
//                    .resizable()
//                    .padding()
//
//                })
//                 .buttonStyle(PlainButtonStyle())
//
//                Button(
//                                   action: {
//                                       print("Tapped!")
//                                   },
//                                   label: {
//                                   Image("kinggolf")
//                                   .resizable()
//                                   .padding()
//
//                               })
//                                .buttonStyle(PlainButtonStyle())
//
//            }
//                         Text("無料ランキング")
//
//        HStack {
//                Button(
//                    action: {
//                        print("Tapped!")
//                    },
//                    label: {
//                    Image("aoashi")
//                    .resizable()
//                    .padding()
//
//                })
//                 .buttonStyle(PlainButtonStyle())
//
//                Button(
//                                   action: {
//                                       print("Tapped!")
//                                   },
//                                   label: {
//                                   Image("utyuukyodai")
//                                   .resizable()
//                                   .padding()
//
//                }).buttonStyle(PlainButtonStyle())
//
////                                .buttonStyle(PlainButtonStyle())
//            }.buttonStyle(PlainButtonStyle())
//            .frame(width: geometry.size.width / 1,
//                    height: -geometry.size.height / 4)
//
//
//                        //            TabNavView()
//        }
//            }
////        }.buttonStyle(PlainButtonStyle())
//        }
//}.buttonStyle(PlainButtonStyle())
     }
                }
                            
    }
        }
    
    
          


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
