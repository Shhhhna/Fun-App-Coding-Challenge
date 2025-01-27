//
//  PageOne.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 12/21/24.
//

import SwiftUI

struct PageOne: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundImage = UIImage(named: "lightgreenbackground-app")
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        
        
        ZStack {
            Image("lightbluebackground-app")
            .resizable()
            .ignoresSafeArea()
        
            
            ScrollView {
            VStack {
                Text("The Impact of AI on Climate Change").font(Font.custom("Lexend-Bold", size: 50)).foregroundColor(Color.myColor9)
                
                Text("By: Sena Hordoffa").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor9)
                    .frame(width: 380, alignment: .leading)
                    .position(x: 205, y: 4)
                
                
            }
            
                
                
                
            VStack {
                
                ZStack {
                    Image("datacenternewimage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, 200)
                    
                    Text("This is a \ndata center").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor9)
                        .frame(width: 380, alignment: .leading)
                        .position(x: 210, y: 300) // text 1
                    
                    Text("Artificial intelligence (AI) data is usually stored in physical buildings called data centers, and data centers rely on a lot of electricity in order to work.").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor)
                        .frame(width: 380, alignment: .leading)
                        .position(x: 201, y: 580) // text 2
                    
                    Text("However, a lot of the electricity and energy that data centers use primarily comes from burning fossil fuels. Fossil fuels are really old fossilized plant and animal remains.").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 190, height: 400)
                        .position(x: 290, y: 850) // text 3
                    
                    Text("Fossil fuels are non-renewable energy sources and there are many different types of fossil fuels such as coal, oil, natural gas, and petroleum.").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 400)
                        .position(x: 205, y: 1550) // text 4
                    
                } // the second Zstack ends here
                
                
                ZStack {
                    Image("kwksomemoreimages-app")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -10)
                    
                    Text("How Does This Affect Our Planet?").font(Font.custom("Lexend-Bold", size: 30)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 400)
                        .position(x: 205, y: 50) // text 5
                    
                    Text("When fossil fuels are burned it causes gases like carbon dioxide (CO2) and other greenhouse gases to be released into the earth's atmosphere").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 200, height: 400)
                        .position(x: 290, y: 220) // text 6
                    
                    Text("The trapped gases cause the earth to heat up and rising temperatures").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 200, height: 400)
                        .position(x: 290, y: 580) // text 7
                    
                    Text("This has also caused sea levels to rise").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 180, height: 400)
                        .position(x: 290, y: 900) // text 8
                    
                } // the third Zstack ends here
                
                ZStack {
                    Image("datacenterwaterimage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -10)
                    
                    
                    Rectangle()
                        .frame(width: 420, height: 300)
                        .foregroundColor(Color.myColor8)
                        .position(x: 200, y: 64)
                    
                    
                    Text("Not only do data centers use a lot of non-renewable energy sources, but they also require massive amounts of water for their cooling system. Their liquid cooling system is meant to help maintain the technology and AI servers and to prevent it from overheating. However, in a lot of places, there are scarce amounts of water.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 80) // text 9
                    
                    
                } // the fourth Zstack ends here
                
                
                ZStack {
                    Image("datacenterwindimage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("In recent years, some data centers have started using more renewable energy sources. Renewable energy comes from natural resources and they get renewed or replaced faster than people use them. For instance, some data centers are now using Wind Power by using Wind Turbines. Wind turbines are a renewable energy source that uses kinetic energy from the wind to produce electrical energy.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 160) // text 10
                    
                } // the fifth Zstack ends here
                
                
                ZStack {
                    Image("datacentersolarimage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -10)
                    
                    Text("They also use Solar Energy, which is another type of renewable energy source. Solar energy turns sunlight into energy, and it can still work even in cloudy weather too.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 40) // text 11
                    
                    Text("Renewable energy helps to reduce pollution and carbon emissions, lowers energy costs, increases job opportunities, allows remote areas to access power, and more (U.S. Department of Energy's Office of Energy Efficiency and Renewable Energy (EERE), n.d.) ").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 284)
                    
                    Text("Renewable Energy Resources: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 450, height: 500)
                        .position(x: 200, y: 880)
                    
                    
                    Rectangle()
                        .frame(width: 364, height: 380)
                        .foregroundColor(Color.myColor7)
                        .position(x: 200, y: 1100)
                        .shadow(radius: 15)
                    
                    Link("https://www.epa.gov/statelocalenergy/state-renewable-energy-resources", destination: URL(string: "https://www.epa.gov/statelocalenergy/state-renewable-energy-resources")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 980)
                    
                    Link("https://www.energy.gov/eere/renewable-energy-pillar", destination: URL(string: "https://www.energy.gov/eere/renewable-energy-pillar")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 1064)
                    
                    Link("https://www.investopedia.com/10-biggest-solar-companies-5077655", destination: URL(string: "https://www.investopedia.com/10-biggest-solar-companies-5077655")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 1142)
                    
                    Link("https://www.investopedia.com/investing/top-alternative-energy-companies/", destination: URL(string: "https://www.investopedia.com/investing/top-alternative-energy-companies/")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 1224)
                    
                } // the sixth Zstack ends here
                
                
                ZStack {
                    Image("kwkpageonelastimage-app")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -10)
                    
                    Text("Is AI considered Sustainable in any way? Is there a positive side to AI's environmental impact?").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 120) // text 12
                    
                    Text("1. Food and Agriculture: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 195, y: 280) // text 13
                    
                    Text("AI can be used to help with sustainable farming practices. It helps farmers efficiently use and distribute their resources and reduce the use of water consumption and pesticides. In supply chains, AI can also help companies lower costs, reduce waste, and improve inventory management.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 325, height: 500)
                        .position(x: 200, y: 610) // text 14
                    
                    Text("2. Weather Patterns and Events: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 325, height: 500)
                        .position(x: 180, y: 800) // text 15
                    
                    Text("AI can help predict things like weather events or even natural disasters that are caused by climate change.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 325, height: 500)
                        .position(x: 194, y: 1100) // text 16
                    
                    Text("3. Energy Usage: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 325, height: 500)
                        .position(x: 160, y: 1360) // text 17
                    
                    Text("AI can also help data centers, and other companies, predict how much energy they're using and it can reduce the amount of energy they’re wasting and the pollution they're causing. Not only does it help them cut costs, but it also helps the environment overall.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 310, height: 500)
                        .position(x: 200, y: 1750) // text 18
                    
                    
                } // the seventh Zstack ends here
                
                
                ZStack {
                    Image("kwkpageoneearthimage-app")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -10)
                    
                    
                    Text("Although AI data centers and many other companies have a significant and increasing carbon footprint, they are not the only contributors to the climate change problem. Addressing climate change requires collective action from all individuals around the globe.  ").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.center)
                        .frame(width: 310, height: 500)
                        .position(x: 200, y: 500) // text 19
                    
                    
                    
                } // the eight Zstack ends here
                
                
                ZStack {
                    Text("References: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 310, height: 500)
                        .position(x: 200, y: 80)
                    
                    Link("https://www.unep.org/news-and-stories/story/ai-has-environmental-problem-heres-what-world-can-do-about", destination: URL(string: "https://www.unep.org/news-and-stories/story/ai-has-environmental-problem-heres-what-world-can-do-about")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 140)
                        .italic()
                    
                    Link("https://ocean.si.edu/conservation/gulf-oil-spill/what-are-fossil-fuels", destination: URL(string: "https://ocean.si.edu/conservation/gulf-oil-spill/what-are-fossil-fuels")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 220)
                        .italic()
                    
                    Link("https://www.nrdc.org/stories/fossil-fuels-dirty-facts#sec-burning", destination: URL(string: "https://www.nrdc.org/stories/fossil-fuels-dirty-facts#sec-burning")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 290)
                        .italic()
                    
                    Link("https://www.epa.gov/climatechange-science/basics-climate-change", destination: URL(string: "https://www.epa.gov/climatechange-science/basics-climate-change")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 360)
                        .italic()
                    
                    Link("https://www.energy.gov/eere/renewable-energy-pillar", destination: URL(string: "https://www.energy.gov/eere/renewable-energy-pillar")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 430)
                        .italic()
                    
                    Link("https://www.un.org/en/climatechange/what-is-renewable-energy", destination: URL(string: "https://www.un.org/en/climatechange/what-is-renewable-energy")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 500)
                        .italic()
                    
                    Link("https://www.brookings.edu/articles/how-artificial-intelligence-will-affect-the-future-of-energy-and-climate/", destination: URL(string: "https://www.brookings.edu/articles/how-artificial-intelligence-will-affect-the-future-of-energy-and-climate/")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 580)
                        .italic()
                    
                    Link("https://sloanreview.mit.edu/article/will-ai-help-or-hurt-sustainability-yes/", destination: URL(string: "https://sloanreview.mit.edu/article/will-ai-help-or-hurt-sustainability-yes/")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 672)
                        .italic()
                    
                    Link("https://www.ffa.org/technology/how-ai-can-impact-agriculture/", destination: URL(string: "https://www.ffa.org/technology/how-ai-can-impact-agriculture/")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 748)
                        .italic()
                    
                    
                    
                } // the ninth Zstack ends here
                
                .padding(.bottom, 480) // this is to add more space at the bottom
                
                    } //this is where the Vstack with all of the images ends
                
                
                
                
                } //this is where the scroll view ends
        
            
        } //this is where the Zstack ends
        
        
    } // this is where the var body ends
    
    
} //this is where the whole thing ends

#Preview {
    PageOne()
}
