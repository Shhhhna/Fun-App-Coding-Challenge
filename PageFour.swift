//
//  PageFour.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 1/1/25.
//

import SwiftUI

struct PageFour: View {
    
    @State private var showBlueberriesCount = 0
    @State private var showTomatoCount = 0
    @State private var showLemonCount = 0
    @State private var showMangoCount = 0
    @State private var showAppleCount = 0
    @State private var showStrawberryCount = 0
    @State private var showBlackberryCount = 0
    @State private var showRaspberryCount = 0
    @State private var showCherryCount = 0
    @State private var showGreenZucchiniCount = 0
    @State private var showYellowZucchiniCount = 0
    @State private var showCarrotCount = 0 // veggies start here
    @State private var showPepperCount = 0
    @State private var showBasilCount = 0 // herbs start here
    @State private var showCilantroCount = 0
    @State private var showParsleyCount = 0
    @State private var showBirdhouseCount = 0 // the fun items starts here
    @State private var showPlaygroundslideCount = 0
    @State private var showTrampolineCount = 0
    @State private var showAnothertreeCount = 0
    @State private var showBasketCount = 0
    @State private var showAmusementparkCount = 0
    @State private var showDogCount = 0
    @State private var showCatCount = 0
    @State private var showCastleCount = 0
    @State private var showHorseCount = 0
    @State private var showCarriageCount = 0
    @State private var showButterflyCount = 0
    @State private var showBikeCount = 0
    @State private var showWateringcanCount = 0
    @State private var showBenchCount = 0
    
    
    
    
    @State private var dragOffsetBlueberries: [CGSize] = [] // 1st fruit
    @State private var positionBlueberries: [CGSize] = []
    
    
    @State private var dragOffsetTomato: [CGSize] = [] //2nd fruit
    @State private var positionTomato: [CGSize] = []
    
    
    @State private var dragOffsetLemon: [CGSize] = [] //3rd fruit
    @State private var positionLemon: [CGSize] = []
    
    
    @State private var dragOffsetMango: [CGSize] = [] // 4th fruit
    @State private var positionMango: [CGSize] = []
    
    
    @State private var dragOffsetApple: [CGSize] = [] // 5th fruit
    @State private var positionApple: [CGSize] = []
    
    
    @State private var dragOffsetStrawberry: [CGSize] = [] // 6th fruit
    @State private var positionStrawberry: [CGSize] = []
    
    
    @State private var dragOffsetBlackberry: [CGSize] = [] // 7th fruit
    @State private var positionBlackberry: [CGSize] = []
    
    
    @State private var dragOffsetRaspberry: [CGSize] = [] // 8th fruit
    @State private var positionRaspberry: [CGSize] = []
    
    
    @State private var dragOffsetCherry: [CGSize] = [] // 9th fruit
    @State private var positionCherry: [CGSize] = []
    
    
    @State private var dragOffsetGreenZucchini: [CGSize] = [] // 10th fruit
    @State private var positionGreenZucchini: [CGSize] = []
    
    
    @State private var dragOffsetYellowZucchini: [CGSize] = [] // 11th fruit
    @State private var positionYellowZucchini: [CGSize] = []
    
    
    @State private var dragOffsetCarrot: [CGSize] = [] // 1st veggie
    @State private var positionCarrot: [CGSize] = []
    
    
    @State private var dragOffsetPepper: [CGSize] = [] // 2nd veggie
    @State private var positionPepper: [CGSize] = []
    
    
    @State private var dragOffsetBasil: [CGSize] = [] // 1st herb
    @State private var positionBasil: [CGSize] = []
    
    
    @State private var dragOffsetCilantro: [CGSize] = [] // 2nd herb
    @State private var positionCilantro: [CGSize] = []
    
    
    @State private var dragOffsetParsley: [CGSize] = [] // 3rd herb
    @State private var positionParsley: [CGSize] = []
    
    
    @State private var dragOffsetBirdhouse: [CGSize] = [] // fun items starts here
    @State private var positionBirdhouse: [CGSize] = []
    
    
    @State private var dragOffsetPlaygroundslide: [CGSize] = []
    @State private var positionPlaygroundslide: [CGSize] = []
    
    
    @State private var dragOffsetTrampoline: [CGSize] = []
    @State private var positionTrampoline: [CGSize] = []
    
    
    @State private var dragOffsetAnothertree: [CGSize] = []
    @State private var positionAnothertree: [CGSize] = []
    
    
    @State private var dragOffsetBasket: [CGSize] = []
    @State private var positionBasket: [CGSize] = []
    
    
    @State private var dragOffsetAmusementpark: [CGSize] = []
    @State private var positionAmusementpark: [CGSize] = []
    
    
    @State private var dragOffsetDog: [CGSize] = []
    @State private var positionDog: [CGSize] = []
    
    
    @State private var dragOffsetCat: [CGSize] = []
    @State private var positionCat: [CGSize] = []
    
    
    @State private var dragOffsetCastle: [CGSize] = []
    @State private var positionCastle: [CGSize] = []
    
    
    @State private var dragOffsetHorse: [CGSize] = []
    @State private var positionHorse: [CGSize] = []
    
    
    @State private var dragOffsetCarriage: [CGSize] = []
    @State private var positionCarriage: [CGSize] = []
    
    
    @State private var dragOffsetButterfly: [CGSize] = []
    @State private var positionButterfly: [CGSize] = []
    
    
    @State private var dragOffsetBike: [CGSize] = []
    @State private var positionBike: [CGSize] = []
    
    
    @State private var dragOffsetWateringcan: [CGSize] = []
    @State private var positionWateringcan: [CGSize] = []
    
    
    @State private var dragOffsetBench: [CGSize] = []
    @State private var positionBench: [CGSize] = []
    
    
    
    
    @State private var originalPosition: CGSize = .zero //this is new
    @State private var dragOffsets: [CGSize] = []
    
    
    
    @State var searchingFor = ""
    @State var levelStatus = 0
    @State var selectedWord = ""
    @State var blueBerries = ["blueberry", "blueberries"]
    @State var tomatoes = ["tomato", "tomatoes"]
    @State var lemon = ["Lemon", "Lemons"]
    @State var mango = ["Mango", "Mangoes", "Mangos"]
    @State var apple = ["Apple", "Apples"]
    @State var strawberry = ["Strawberry", "Strawberries"]
    @State var blackberry = ["Blackberry", "Blackberries"]
    @State var raspberry = ["Raspberry", "Raspberries"]
    @State var cherry = ["Cherry", "Cherries"]
    @State var greenZucchini = ["Zucchini", "Zucchinis", "Green zucchini", "Green zucchinis"]
    @State var yellowZucchini = ["Yellow zucchini", "Summer squash", "Yellow squash", "Yellow zucchinis"]
    @State var carrot = ["Carrot", "Carrots"]
    @State var pepper = ["Pepper", "Peppers", "Yellow Pepper", "Red Pepper"]
    @State var basil = ["Basil", "Basil leaves"]
    @State var cilantro = ["Cilantro", "Cilantro leaves"]
    @State var parsley = ["Parsley", "Parsley leaves"]
    @State var birdhouse = ["Birdhouse", "Bird house"]
    @State var playgroundslide = ["playground", "slide", "A slide", "A playground slide", "Playground slide", "slides"]
    @State var trampoline = ["Trampoline", "A trampoline"]
    @State var anothertree = ["Tree", "A tree"]
    @State var basket = ["A basket", "Basket"]
    @State var amusementpark = ["An amusement park", "Amusement park", "ride", "rides", "rollercoaster", "roller coaster"]
    @State var dog = ["Dog", "A dog"]
    @State var cat = ["Cat", "A cat"]
    @State var castle = ["A castle", "Castle"]
    @State var horse = ["A horse", "Horse"]
    @State var carriage = ["A carriage", "Carriage"]
    @State var butterfly = ["A butterfly", "butterfly", "butterflies"]
    @State var bike = ["Bike", "A bike"]
    @State var wateringcan = ["A watering can", "watering can"]
    @State var bench = ["Bench", "A bench"]
    
    
    
    
    
    @State private var showImage1 = false
    @State private var showImage2 = false
    
    
    
    var body: some View {
        
        ZStack {
            
            Image("kwklightblueskybackgroundforgarden-app")
                .resizable()
                .ignoresSafeArea()
            
            
            
            
            VStack(spacing: 12) {
                
                ScrollView {
                    
                    VStack {
                        ZStack {
                            Image("kwkinteractivegardenbackground-app")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.top, -68)
                        }
                    }
                    
                    Text("Use the search below to find plants or other fun items to drag and add to your garden!").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor5).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 250)
                        .position(x: 190, y: 62)
                    
                    
                    
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        
                        Rectangle()
                            .fill(.pink)
                            .frame(width: 82, height: 31)
                            .cornerRadius(2)
                            .position(x: 32, y: 54) // this is pink rectangle behind the search:
                        
                        
                        HStack {
                            Text("Search: ")
                                .padding(.trailing, -10.0)
                                .foregroundColor(.white)
                                .bold()
                            
                            TextField("Search for items...", text: $searchingFor)
                                .textFieldStyle(.roundedBorder)
                                .padding(.horizontal, 10.0)
                            
                            
                            
                        }
                        
                        
                        Spacer()
                        Button(action: { enterAnswer()}) {
                            Text("Enter")
                                .padding()
                                .border(.white)
                        }
                        .foregroundColor(.white)
                        .background(Color.myColor3)
                        .cornerRadius(5) // the enter answer button ends here
                        
                        
                        
                        Button(action: {reset() }) {
                            Text("Reset")
                                .padding()
                                .border(.white)
                            
                        }
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(5) // the reset button ends here
                        .position(x: 154, y: 80)
                        
                        
                    } //this is where the VStack for the search bar ends
                    .padding()
                    
                    
                    .padding() //this is for the light yellow background box
                    .background(Rectangle()
                        .foregroundColor(Color.myColor2)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .frame(height: 380))
                    .padding()
                    
                    
                    
                    
                    .padding(.top, -80)
                    .padding(.bottom, 400) // this is to add spacing in between the search bar and reminders and to add some more space for the bottom
                    
                    
                    ZStack {
                        
                        if levelStatus == 0 {
                            Text("Add plants to your garden from the list of available items below").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor5).multilineTextAlignment(.center)
                                .frame(width: 340, height: 500)
                                .position(x: 200, y: 300)
                            
                        }
                        
                        
                        
                        ForEach(0..<showAnothertreeCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkanothertreegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 280, height: 280)
                                .padding()
                            
                                .offset(x: positionAnothertree[index].width + dragOffsetAnothertree[index].width, y: positionAnothertree[index].height + dragOffsetAnothertree[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetAnothertree[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionAnothertree[index].width += value.translation.width
                                            
                                            self.positionAnothertree[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetAnothertree[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the another tree For each ends here
                        
                        
                        
                        
                        
                        ForEach(0..<showBlueberriesCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkblueberriesgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                                .offset(x: positionBlueberries[index].width + dragOffsetBlueberries[index].width, y: positionBlueberries[index].height + dragOffsetBlueberries[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBlueberries[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBlueberries[index].width += value.translation.width
                                            
                                            self.positionBlueberries[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBlueberries[index] = .zero
                                            
                                        })
                                )
                            
                        } // the blueberries For each ends here
                        
                        
                        ForEach(0..<showTomatoCount, id: \.self) { index in
                            
                            Image(uiImage: UIImage(named: "kwktomatogarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            
                                .offset(x: positionTomato[index].width + dragOffsetTomato[index].width, y: positionTomato[index].height + dragOffsetTomato[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetTomato[index] = value.translation
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionTomato[index].width += value.translation.width
                                            
                                            self.positionTomato[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetTomato[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the tomato For each ends here
                        
                        
                        
                        ForEach(0..<showLemonCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwklemongarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                                .offset(x: positionLemon[index].width + dragOffsetLemon[index].width, y: positionLemon[index].height + dragOffsetLemon[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetLemon[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionLemon[index].width += value.translation.width
                                            
                                            self.positionLemon[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetLemon[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the lemon For each ends here
                        
                        
                        
                        ForEach(0..<showMangoCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkmangogarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            
                                .offset(x: positionMango[index].width + dragOffsetMango[index].width, y: positionMango[index].height + dragOffsetMango[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetMango[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionMango[index].width += value.translation.width
                                            
                                            self.positionMango[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetMango[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the mango For each ends here
                        
                        
                        
                        ForEach(0..<showAppleCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkapplegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            
                                .offset(x: positionApple[index].width + dragOffsetApple[index].width, y: positionApple[index].height + dragOffsetApple[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetApple[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionApple[index].width += value.translation.width
                                            
                                            self.positionApple[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetApple[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the apple For each ends here
                        
                        
                        
                        
                        ForEach(0..<showStrawberryCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkstrawberrygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                                .offset(x: positionStrawberry[index].width + dragOffsetStrawberry[index].width, y: positionStrawberry[index].height + dragOffsetStrawberry[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetStrawberry[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionStrawberry[index].width += value.translation.width
                                            
                                            self.positionStrawberry[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetStrawberry[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the strawberry For each ends here
                        
                        
                        
                        
                        ForEach(0..<showBlackberryCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkblackberrygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                                .offset(x: positionBlackberry[index].width + dragOffsetBlackberry[index].width, y: positionBlackberry[index].height + dragOffsetBlackberry[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBlackberry[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBlackberry[index].width += value.translation.width
                                            
                                            self.positionBlackberry[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBlackberry[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the blackberry For each ends here
                        
                        
                        
                        
                        ForEach(0..<showRaspberryCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkrasberrygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                                .offset(x: positionRaspberry[index].width + dragOffsetRaspberry[index].width, y: positionRaspberry[index].height + dragOffsetRaspberry[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetRaspberry[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionRaspberry[index].width += value.translation.width
                                            
                                            self.positionRaspberry[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetRaspberry[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the raspberry For each ends here
                        
                        
                        
                        
                        ForEach(0..<showCherryCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcherrygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            
                                .offset(x: positionCherry[index].width + dragOffsetCherry[index].width, y: positionCherry[index].height + dragOffsetCherry[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCherry[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCherry[index].width += value.translation.width
                                            
                                            self.positionCherry[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCherry[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the cherry For each ends here
                        
                        
                        
                        
                        ForEach(0..<showGreenZucchiniCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkgreenzucchinigarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                                .offset(x: positionGreenZucchini[index].width + dragOffsetGreenZucchini[index].width, y: positionGreenZucchini[index].height + dragOffsetGreenZucchini[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetGreenZucchini[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionGreenZucchini[index].width += value.translation.width
                                            
                                            self.positionGreenZucchini[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetGreenZucchini[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the green zucchini For each ends here
                        
                        
                        
                        
                        ForEach(0..<showYellowZucchiniCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkyellowzucchinigarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionYellowZucchini[index].width + dragOffsetYellowZucchini[index].width, y: positionYellowZucchini[index].height + dragOffsetYellowZucchini[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetYellowZucchini[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionYellowZucchini[index].width += value.translation.width
                                            
                                            self.positionYellowZucchini[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetYellowZucchini[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the yellow zucchini For each ends here
                        
                        
                        
                        
                        ForEach(0..<showCarrotCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcarrotgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                                .padding()
                            
                                .offset(x: positionCarrot[index].width + dragOffsetCarrot[index].width, y: positionCarrot[index].height + dragOffsetCarrot[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCarrot[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCarrot[index].width += value.translation.width
                                            
                                            self.positionCarrot[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCarrot[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the carrot For each ends here
                        
                        
                        
                        
                        ForEach(0..<showPepperCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkpeppergarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionPepper[index].width + dragOffsetPepper[index].width, y: positionPepper[index].height + dragOffsetPepper[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetPepper[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionPepper[index].width += value.translation.width
                                            
                                            self.positionPepper[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetPepper[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the pepper For each ends here
                        
                        
                        
                        
                        ForEach(0..<showBasilCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbasilgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionBasil[index].width + dragOffsetBasil[index].width, y: positionBasil[index].height + dragOffsetBasil[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBasil[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBasil[index].width += value.translation.width
                                            
                                            self.positionBasil[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBasil[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the basil For each ends here
                        
                        
                        
                        
                        ForEach(0..<showCilantroCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcilantrogarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionCilantro[index].width + dragOffsetCilantro[index].width, y: positionCilantro[index].height + dragOffsetCilantro[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCilantro[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCilantro[index].width += value.translation.width
                                            
                                            self.positionCilantro[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCilantro[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the cilantro For each ends here
                        
                        
                        
                        
                        ForEach(0..<showParsleyCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkparsleygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionParsley[index].width + dragOffsetParsley[index].width, y: positionParsley[index].height + dragOffsetParsley[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetParsley[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionParsley[index].width += value.translation.width
                                            
                                            self.positionParsley[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetParsley[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the parsley For each ends here
                        
                        
                        
                        ForEach(0..<showBirdhouseCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbirdhousegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionBirdhouse[index].width + dragOffsetBirdhouse[index].width, y: positionBirdhouse[index].height + dragOffsetBirdhouse[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBirdhouse[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBirdhouse[index].width += value.translation.width
                                            
                                            self.positionBirdhouse[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBirdhouse[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the bird house For each ends here
                        
                        
                        
                        ForEach(0..<showPlaygroundslideCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkplaygroundslidegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 160)
                                .padding()
                            
                                .offset(x: positionPlaygroundslide[index].width + dragOffsetPlaygroundslide[index].width, y: positionPlaygroundslide[index].height + dragOffsetPlaygroundslide[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetPlaygroundslide[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionPlaygroundslide[index].width += value.translation.width
                                            
                                            self.positionPlaygroundslide[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetPlaygroundslide[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the playground slide For each ends here
                        
                        
                        
                        ForEach(0..<showTrampolineCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwktrampolinegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180)
                                .padding()
                            
                                .offset(x: positionTrampoline[index].width + dragOffsetTrampoline[index].width, y: positionTrampoline[index].height + dragOffsetTrampoline[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetTrampoline[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionTrampoline[index].width += value.translation.width
                                            
                                            self.positionTrampoline[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetTrampoline[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the trampoline For each ends here
                        
                        
                        
                        
                        ForEach(0..<showBasketCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbasketgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .padding()
                            
                                .offset(x: positionBasket[index].width + dragOffsetBasket[index].width, y: positionBasket[index].height + dragOffsetBasket[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBasket[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBasket[index].width += value.translation.width
                                            
                                            self.positionBasket[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBasket[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the basket For each ends here
                        
                        
                        
                        ForEach(0..<showAmusementparkCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkamusementparkgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 420, height: 420)
                                .padding()
                            
                                .offset(x: positionAmusementpark[index].width + dragOffsetAmusementpark[index].width, y: positionAmusementpark[index].height + dragOffsetAmusementpark[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetAmusementpark[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionAmusementpark[index].width += value.translation.width
                                            
                                            self.positionAmusementpark[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetAmusementpark[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the amusement park For each ends here
                        
                        
                        
                        ForEach(0..<showDogCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkdoggarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .padding()
                            
                                .offset(x: positionDog[index].width + dragOffsetDog[index].width, y: positionDog[index].height + dragOffsetDog[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetDog[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionDog[index].width += value.translation.width
                                            
                                            self.positionDog[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetDog[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the dog For each ends here
                        
                        
                        
                        ForEach(0..<showCatCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcatgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                            
                                .offset(x: positionCat[index].width + dragOffsetCat[index].width, y: positionCat[index].height + dragOffsetCat[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCat[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCat[index].width += value.translation.width
                                            
                                            self.positionCat[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCat[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the cat For each ends here
                        
                        
                        
                        ForEach(0..<showCastleCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcastlegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 420, height: 420)
                                .padding()
                            
                                .offset(x: positionCastle[index].width + dragOffsetCastle[index].width, y: positionCastle[index].height + dragOffsetCastle[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCastle[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCastle[index].width += value.translation.width
                                            
                                            self.positionCastle[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCastle[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the castle For each ends here
                        
                        
                        
                        ForEach(0..<showHorseCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkhorsegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 160)
                                .padding()
                            
                                .offset(x: positionHorse[index].width + dragOffsetHorse[index].width, y: positionHorse[index].height + dragOffsetHorse[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetHorse[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionHorse[index].width += value.translation.width
                                            
                                            self.positionHorse[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetHorse[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the horse For each ends here
                        
                        
                        
                        ForEach(0..<showCarriageCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkcarriagegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 240)
                                .padding()
                            
                                .offset(x: positionCarriage[index].width + dragOffsetCarriage[index].width, y: positionCarriage[index].height + dragOffsetCarriage[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetCarriage[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionCarriage[index].width += value.translation.width
                                            
                                            self.positionCarriage[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetCarriage[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the carriage For each ends here
                        
                        
                        
                        ForEach(0..<showButterflyCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbutterflygarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                            
                                .offset(x: positionButterfly[index].width + dragOffsetButterfly[index].width, y: positionButterfly[index].height + dragOffsetButterfly[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetButterfly[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionButterfly[index].width += value.translation.width
                                            
                                            self.positionButterfly[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetButterfly[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the butterfly For each ends here
                        
                        
                        
                        ForEach(0..<showBikeCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbikegarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180)
                                .padding()
                            
                                .offset(x: positionBike[index].width + dragOffsetBike[index].width, y: positionBike[index].height + dragOffsetBike[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBike[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBike[index].width += value.translation.width
                                            
                                            self.positionBike[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBike[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the bike For each ends here
                        
                        
                        
                        ForEach(0..<showWateringcanCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkwateringcangarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                                .offset(x: positionWateringcan[index].width + dragOffsetWateringcan[index].width, y: positionWateringcan[index].height + dragOffsetWateringcan[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetWateringcan[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionWateringcan[index].width += value.translation.width
                                            
                                            self.positionWateringcan[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetWateringcan[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the watering can For each ends here
                        
                        
                        
                        ForEach(0..<showBenchCount, id: \.self) { index in
                            Image(uiImage: UIImage(named: "kwkbenchgarden-app")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 160)
                                .padding()
                            
                                .offset(x: positionBench[index].width + dragOffsetBench[index].width, y: positionBench[index].height + dragOffsetBench[index].height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffsetBench[index] = value.translation //come back here
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.positionBench[index].width += value.translation.width
                                            
                                            self.positionBench[index].height += value.translation.height
                                            
                                            
                                            self.dragOffsetBench[index] = .zero
                                            
                                        })
                                )
                            
                            
                        } // the bench For each ends here
                        
                        
                        
                        
                        
                        if levelStatus == 3 {
                            Text(" ").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                                .multilineTextAlignment(.center)
                                .frame(width: 340, height: 500)
                                .position(x: 200, y: 314)
                            
                        }
                        
                        
                        
                    } // the huge Zstack ends here for the plant images
                    
                    .position(x: 200, y: -750) // this chnages the position of the plant images
                    
                    
                    Text("Fruits: ").font(Font.custom("Mystery Quest", size: 48)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 124, y: -800)
                    
                    
                    Text("• Tomatoes \n• Blueberries \n• Lemon \n• Mango \n• Apple \n• Strawberry \n• Blackberry \n• Raspberry \n• Cherries \n• Green Zucchini \n• Yellow Zucchini").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 140, y: -1130)
                    
                    Text("Vegetables: ").font(Font.custom("Mystery Quest", size: 48)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 168, y: -1420)
                    
                    Text("• Carrot \n• Peppers ").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 98, y: -1854)
                    
                    Text("Herbs: ").font(Font.custom("Mystery Quest", size: 48)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 124, y: -2264)
                    
                    Text("• Basil \n• Cilantro \n• Parsley ").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 98, y: -2690)
                    
                    Text("Fun Decorations: ").font(Font.custom("Mystery Quest", size: 48)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 210, y: -3100)
                    
                    Text("• Birdhouse \n• Playground slide \n• Trampoline \n• Tree \n• Basket \n• Amusement park \n• Dog \n• Cat \n• Castle \n• Horse \n• Carriage \n• Butterfly \n• Bike \n• Watering can \n• Bench").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 140, y: -3380)
                    
                    Text("The purpose of this virtual garden is to inspire users to transform their virtual design into a real-life garden.").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.center)
                        .frame(width: 340, height: 500)
                        .position(x: 200, y: -3500)
                    
                    
                    
                } // the scroll view ends here
                
                
            } // the Vstack ends here
            
            .padding(.bottom, -3690) // this is for the spacing at the bottom
            
            
            
        } // the Zstack ends here
        
        
    } // the var body ends here
    
    
    func enterAnswer() {
        if blueBerries.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
            
            positionBlueberries.append(CGSize(width: 100, height: 100))
            dragOffsetBlueberries.append(.zero)
            showBlueberriesCount += 1
        
    } else if tomatoes.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
            
        positionTomato.append(CGSize(width: 100, height: 100))
        dragOffsetTomato.append(.zero)
        showTomatoCount += 1
        
        
    } else if lemon.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionLemon.append(CGSize(width: 100, height: 100))
        dragOffsetLemon.append(.zero)
        showLemonCount += 1
        
    } else if mango.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionMango.append(CGSize(width: 100, height: 100))
        dragOffsetMango.append(.zero)
        showMangoCount += 1
        
    } else if apple.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionApple.append(CGSize(width: 100, height: 100))
        dragOffsetApple.append(.zero)
        showAppleCount += 1
        
    } else if strawberry.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionStrawberry.append(CGSize(width: 100, height: 100))
        dragOffsetStrawberry.append(.zero)
        showStrawberryCount += 1
        
    } else if blackberry.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBlackberry.append(CGSize(width: 100, height: 100))
        dragOffsetBlackberry.append(.zero)
        showBlackberryCount += 1
        
    } else if raspberry.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionRaspberry.append(CGSize(width: 100, height: 100))
        dragOffsetRaspberry.append(.zero)
        showRaspberryCount += 1
        
    } else if cherry.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCherry.append(CGSize(width: 100, height: 100))
        dragOffsetCherry.append(.zero)
        showCherryCount += 1
        
    } else if greenZucchini.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionGreenZucchini.append(CGSize(width: 100, height: 100))
        dragOffsetGreenZucchini.append(.zero)
        showGreenZucchiniCount += 1
        
    } else if yellowZucchini.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionYellowZucchini.append(CGSize(width: 100, height: 100))
        dragOffsetYellowZucchini.append(.zero)
        showYellowZucchiniCount += 1
        
    } else if carrot.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCarrot.append(CGSize(width: 100, height: 100))
        dragOffsetCarrot.append(.zero)
        showCarrotCount += 1
        
    } else if pepper.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionPepper.append(CGSize(width: 100, height: 100))
        dragOffsetPepper.append(.zero)
        showPepperCount += 1
        
    } else if basil.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBasil.append(CGSize(width: 100, height: 100))
        dragOffsetBasil.append(.zero)
        showBasilCount += 1
        
    } else if cilantro.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCilantro.append(CGSize(width: 100, height: 100))
        dragOffsetCilantro.append(.zero)
        showCilantroCount += 1
        
    } else if parsley.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionParsley.append(CGSize(width: 100, height: 100))
        dragOffsetParsley.append(.zero)
        showParsleyCount += 1
        
    } else if birdhouse.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBirdhouse.append(CGSize(width: 100, height: 100))
        dragOffsetBirdhouse.append(.zero)
        showBirdhouseCount += 1
        
    } else if playgroundslide.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionPlaygroundslide.append(CGSize(width: 100, height: 100))
        dragOffsetPlaygroundslide.append(.zero)
        showPlaygroundslideCount += 1
        
    } else if trampoline.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionTrampoline.append(CGSize(width: 100, height: 100))
        dragOffsetTrampoline.append(.zero)
        showTrampolineCount += 1
        
    } else if anothertree.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionAnothertree.append(CGSize(width: 100, height: 100))
        dragOffsetAnothertree.append(.zero)
        showAnothertreeCount += 1
        
    } else if basket.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBasket.append(CGSize(width: 100, height: 100))
        dragOffsetBasket.append(.zero)
        showBasketCount += 1
        
    } else if amusementpark.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionAmusementpark.append(CGSize(width: 100, height: 100))
        dragOffsetAmusementpark.append(.zero)
        showAmusementparkCount += 1
        
    } else if dog.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionDog.append(CGSize(width: 100, height: 100))
        dragOffsetDog.append(.zero)
        showDogCount += 1
        
    } else if cat.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCat.append(CGSize(width: 100, height: 100))
        dragOffsetCat.append(.zero)
        showCatCount += 1
        
    } else if castle.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCastle.append(CGSize(width: 100, height: 100))
        dragOffsetCastle.append(.zero)
        showCastleCount += 1
        
    } else if horse.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionHorse.append(CGSize(width: 100, height: 100))
        dragOffsetHorse.append(.zero)
        showHorseCount += 1
        
    } else if carriage.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionCarriage.append(CGSize(width: 100, height: 100))
        dragOffsetCarriage.append(.zero)
        showCarriageCount += 1
        
    } else if butterfly.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionButterfly.append(CGSize(width: 100, height: 100))
        dragOffsetButterfly.append(.zero)
        showButterflyCount += 1
        
    } else if bike.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBike.append(CGSize(width: 100, height: 100))
        dragOffsetBike.append(.zero)
        showBikeCount += 1
        
    } else if wateringcan.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionWateringcan.append(CGSize(width: 100, height: 100))
        dragOffsetWateringcan.append(.zero)
        showWateringcanCount += 1
        
    } else if bench.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
        
        positionBench.append(CGSize(width: 100, height: 100))
        dragOffsetBench.append(.zero)
        showBenchCount += 1
        
    } else {
        levelStatus = 3
        searchingFor = ""
    }
        
        
    } // the func enter answer ends here
    
    
    
    func reset() {
        showTomatoCount = 0
        showBlueberriesCount = 0
        showLemonCount = 0
        showMangoCount = 0
        showAppleCount = 0
        showStrawberryCount = 0
        showBlackberryCount = 0
        showRaspberryCount = 0
        showCherryCount = 0
        showGreenZucchiniCount = 0
        showYellowZucchiniCount = 0
        showCarrotCount = 0
        showPepperCount = 0
        showBasilCount = 0
        showCilantroCount = 0
        showParsleyCount = 0
        showBirdhouseCount = 0
        showPlaygroundslideCount = 0
        showTrampolineCount = 0
        showAnothertreeCount = 0
        showBasketCount = 0
        showAmusementparkCount = 0
        showDogCount = 0
        showCatCount = 0
        showCastleCount = 0
        showHorseCount = 0
        showCarriageCount = 0
        showButterflyCount = 0
        showBikeCount = 0
        showWateringcanCount = 0
        showBenchCount = 0
        positionTomato.removeAll()
        dragOffsets.removeAll()
        searchingFor = ""
        
    } // the func reset ends here
    
    
    
    
} // the entire thing aka the struct page four ends here

#Preview {
    PageFour()
} // everything ends here




























// everything below here is to only make the kanbanview rectangles

struct KanbanView: View {
    let title: String
    let tasks: [UIImage]
    
    
    @State private var dragOffset: CGSize = .zero
    @State private var position: CGSize = .zero
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.footnote.bold())
            
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(.secondarySystemFill))
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(tasks, id: \.self) { task in
                            Image(uiImage: task)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding()
                                
                            
                            
                                .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                            
                            
                                .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        self.dragOffset = value.translation
                                        
                                    })
                                         
                                        .onEnded ({ (value) in
                                            self.position.width += value.translation.width
                                            
                                            self.position.height += value.translation.height
                                            
                                            
                                            self.dragOffset = .zero
                                            
                                        })
                                )
                            
                            
                        } // the for each ends here
                        Spacer()
                        
                    } // the inside smaller Vstack ends here
                    .padding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .leading) // this makes the scrollbar all the way to the right side of the rectangle instead of the middle
                    
                    
                } //the scroll view for the kanban view rectnagel ends here
                
            } // the Zstack ends here
            
        } // the Vstack ends here
        
        .frame(width: 370, height: 300)
        .position(x: 200, y: 620) // this chnages the positon of the kanban view around the screen
    } // the kanbanView var body ends here
    
} // the entire thing aka the kanbanview struct ends here



