//
//  PageTwo.swift
//  KWKFunAppCodingChallenge
//
//  Created by Sena Hordoffa on 12/21/24.
//

import SwiftUI

struct PageTwo: View {
    @State var searchingFor = ""
    @State var levelStatus = 0
    @State var selectedWord = ""
    @State var compostableFoods = ["Banana", "Apple", "Mango", "Pineapples", "Watermelons", "Oranges", "Bananas", "Banana", "Mangoes", "Pineapple", "Watermelon", "Orange", "Apples", "Plums", "Plum", "Peaches", "Peach", "Strawberry", "Strawberries", "Berry", "Berries", "Blackberry", "Blackberries", "Raspberry", "Raspberries", "Pineapple", "Pineapples", "Avacado", "Avacados", "Broccoli", "Cucumber", "Cucumbers", "Grapefruit", "Grapefruits", "Lemon", "Lemons", "Lettuce", "Lime", "Limes", "Melon", "Melons", "Onion", "Onions", "Pear", "Pears", "Potato", "Potatoes", "Pumpkin", "Pumpkins", "Corn", "Tomato", "Tomatoes", "Blueberry", "Blueberries", "Squash", "Zucchini", "Zucchinis", "Cherry", "Cherries", "Carrots", "Carrot", "Pepper", "Peppers", "Beet", "Beets", "Cabbage", "Cabbages", "Eggplant", "Eggplants", "Asparagus", "Celery", "Kale", "Mushroom", "Mushrooms", "Green bean", "Green beans", "Beans", "Bean", "Melons", "Melon", "Passion fruit", "Cardboard", "Coffee grounds", "Coffee ground", "Coffee bean", "Coffee beans", "Hair", "Fur", "Leaf", "Leaves", "Newspaper", "Paper", "Nutshells", "Nutshell", "Tea bag", "Tea bags", "Sawdust", "Wood chip", "Wood chips", "Yard trimming", "Yard trimmings", "Eggshells", "Eggshell"]
    
    @State private var selectedDate = Date() // For the reminder
    @State private var customReminder = ""
    let notify = NotificationHandler() // For the reminder
    
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                Image("lightgreenbackgroundtwo")
                    .resizable()
                    .ignoresSafeArea()
                
            } // the second Zstack ends here
            
            
        ScrollView {
            
            VStack { // this is where the entire new Vstack starts
                ZStack {
                    Text("Some Ways You Can Take Action and Help").font(Font.custom("Lexend-Bold", size: 40)).foregroundColor(Color.myColor).multilineTextAlignment(.leading)
                        .frame(width: 400, height: 500)
                        .position(x: 200, y: 100)
                    
                    Text("Here are some ways you can help prevent climate change:").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 310, height: 500)
                        .position(x: 180, y: 250)
                    
                    Text("1. Use a reusable shopping bag at the store \n2. Use plastic-free products \n3. Start composting \n4. Turn off all electricity when it's not in use \n5. Reduce, reuse, and recycle \n6. Take more public transporation if you can \n7. Donate to local initiatives or organzations or sign petitions \n8. Stay educated \n9. Try to reduce screen time \n10. Use more renewable energy sources").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 195, y: 490)
                    
                    Text(" ''Reduction and reuse are the most effective ways you can save natural resources, protect the environment and save money'' - Environmental Protection Agency (EPA)").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.center)
                        .frame(width: 340, height: 500)
                        .position(x: 205, y: 850)
                    
                } // the third Zstack ends here
                
                
                ZStack {
                        Image("kwklandfillimage-app")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.top, 500)
                        
                        Text("Reduce. \nReuse. \nRecycle.").font(Font.custom("Lexend-Bold", size: 50)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.center)
                        .frame(width: 340, height: 500)
                        .position(x: 205, y: 660)
                    
                    Text(" ''Municipal solid waste (MSW) landfills are the third-largest source of human-related methane emissions in the United States, accounting for approximately 14.4 percent of these emissions in 2022'' - Environmental Protection Agency (EPA)").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 340, height: 500)
                        .position(x: 205, y: 1450)
                    
                } //the fourth ZStack ends here
                
                
                ZStack {
                    Image("kwkrecyclingimage-app")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.top, -20)
                    
                    Text("One effective way to prevent unnecessary waste is through COMPOSTING. \nHere's how it works:").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 50)
                    
                    Text("1. Collect Organic Waste \nFood scraps and other organic materials can be composted instead of thrown in the trash, which ends up in landfills.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 380)
                    
                    Text("2. put the food scraps or other organic compostable materials in a compost pile or bin. Then add water to it periodically to keep the compost moist, but make sure it's not wet. It also needs oxygen, so add ventilation holes, and make sure to rotate or turn the compost bin every 2 to 3 weeks.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 900)
                    
                    Text("3. Microorganisms like bacteria and fungi break down the organic materials and food scraps into simpler or smaller matter. If you turn the compost pile or bin consistently and add water periodically, then your compost will turn into a nutrient-rich soil in a few weeks. If you dont take care of it and instead leave it unattended, then it may take several months or even years until the compost is ready.").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 1350)
                    
                    Rectangle()
                        .frame(width: 350, height: 320)
                        .foregroundColor(Color.myColor7)
                        .position(x: 200, y: 1700)
                        .shadow(radius: 15)
                    
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color.myColor6)
                        .position(x: 200, y: 1580)
                        .shadow(radius: 15)
                    
                    Text("Interested in learning more about composting?: (check out these additional resources below)").font(Font.custom("Lexend-Bold", size: 18)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 195, y: 1640)
                    
                    Link("https://www.nrdc.org/stories/composting-101#howto", destination: URL(string: "https://www.nrdc.org/stories/composting-101#howto")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 148, y: 1720)
                    
                    Link("https://www.epa.gov/recycle/composting-home", destination: URL(string: "https://www.epa.gov/recycle/composting-home")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 148, y: 1780)
                    
                    
                    
                    
                    Text("Wondering if your item is compostable or not? Use Our Helpful Quick Search Tool Below:").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 1995)
                    
                    Text("Setting reminders is an effective way to manage your time and stay organized. Daily life can sometimes be busy and therefore below you'll find a feature that will allow you to set more personalized reminders for tasks such as:").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 200, y: 2800)
                    
                    Text("• Watering your garden \n• Checking on your compost \n• Turning off the lights at \n  specific times").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 200, y: 2970)
                    
                    Text("By setting these reminders, you can stay organized and ensure important tasks are never overlooked. ").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 3100)
                    
                    
                    Text("Here's a place where you can set friendly reminders for yourself:").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 500)
                        .position(x: 190, y: 3320)
                    
                    
                
                    
                    
                } //the fifth Zstack ends here
                
                
                
            
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    if levelStatus == 0 {
                        Image("searchbarcompostinglogo-app")
                            .resizable()
                            .ignoresSafeArea()
                            .aspectRatio(contentMode: .fill)
                        Text("Is It Compostable?").font(Font.custom("Lexend-Bold", size: 24))
                        
                    }
                    
                    if levelStatus == 1 {
                        Image("searchbarcompostinglogo-app")
                            .resizable()
                            .ignoresSafeArea()
                            .aspectRatio(contentMode: .fill)
                        Text("Yes").font(Font.custom("Lexend-Bold", size: 24))
                        
                    }
                    
                    if levelStatus == 2 {
                        Image(systemName: "xmark")
                            .foregroundColor(.red)
                            .font(.system(size: 80))
                            .ignoresSafeArea()
                        
                        Text("No,but this item might still be recyclable").font(Font.custom("Lexend-Bold", size: 24))
                        
                    }
                    
                    HStack {
                        Text("Search: ")
                            .padding(.trailing, -10.0)
                        TextField("Enter your guess!", text: $searchingFor)
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
                    .cornerRadius(5)
                    
                    
                } //this is where the VStack for the search bar ends
                .padding()
                
                
                .padding() //this is for the light yellow background box
                .background(Rectangle()
                    .foregroundColor(Color.myColor2)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                .padding(.top, 200)
                
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("Friendly Reminder:").padding(.top, -40).font(Font.custom("Lexend-Bold", size: 30))
                    Spacer()
                    
                    TextField("Enter a custom reminder", text: $customReminder)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 10.0)
                    
                    
                    Text("Here are some examples: ")
                    
                    
                    
                    
                    Button("Water your garden") {
                        notify.sendNotification(date: Date(), type: "date", title: "Reminder", body: "Water the garden")
                            
                    } //pick up here today....
                    .padding(.horizontal, 50.0)
                    .border(.blue)
                    
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(2) //this is where the water your garden blue button ends
                    
                    Button("Check on your compost") {
                        notify.sendNotification(date: Date(), type: "date", title: "Reminder", body: "Check on the compost")
                            
                    } //pick up here today....
                    .padding(.horizontal, 30.0)
                    .border(.green)
                    
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(2) //this is where the green button ends
                    
                    
                    Button("Turn off the lights") {
                        notify.sendNotification(date: Date(), type: "date", title: "Reminder", body: "Turn off all the lights or other electronics")
                            
                    } //pick up here today....
                    .padding(.horizontal, 54.0)
                    .border(.yellow)
                    
                    .foregroundColor(.black)
                    .background(.yellow)
                    .cornerRadius(2) //this is where the yellow button ends
                    
                    
                    
                    Text("Pick a date: ")
                        .multilineTextAlignment(.leading)
                        .position(x: 35, y: 57)
                    
                    
                    DatePicker("", selection: $selectedDate, in: Date()...)
                    
                    
                    
                    Button("Schedule notification") {
                        notify.sendNotification(
                            date: selectedDate,
                            type: "date",
                            title: "Reminder",
                            body: customReminder
                        ) //pick up hereeeeeeeeeeee!!!
                    }.tint(.orange)
                        .padding()
                        .border(.white)
                        
                        .foregroundColor(Color.myColor3)
                        .background(Color.myColor4)
                        .cornerRadius(2) //this is where the schedule notifcation button ends
                    
                    
                    
                    Spacer()
                    Text("Enable notifications:").foregroundColor(.gray).italic()
                    Button("Request Permissions") {
                        notify.askPermission()
                    }
                    
                    .padding()
                    .border(.white)
                    
                    .foregroundColor(.blue)
                    .background(Color.myColor4)
                    .cornerRadius(2) //this is where the request permissions button ends
                    
                } //this is where the reminder Vstack ends
                .padding()// 13:05 minutes
                
                
                
                .padding()
                .background(Rectangle()
                    .foregroundColor(Color.myColor4)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                
                .padding(.top, 800)
                .padding(.bottom, 800) // this is to add spacing in between the search bar and reminders and to add some more space for the bottom
                
                ZStack {
                    Text("Why compost?").font(Font.custom("Lexend-Bold", size: 40)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 250)
                        .position(x: 170, y: -600)
                    
                    Text("According to a Princeton article, ''composting organic waste versus landfilling it can reduce more than 50% of carbon dioxide-equivalent greenhouse gas emissions'' (Talt, 2020). Composting is also very feasible and achievable for a lot of people.").font(Font.custom("Lexend-Bold", size: 20)).foregroundColor(Color.myColor5)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 250)
                        .position(x: 190, y: -460)
                    
                    Text("References: ").font(Font.custom("Lexend-Bold", size: 24)).foregroundColor(Color.myColor3)
                        .multilineTextAlignment(.center)
                        .frame(width: 340, height: 250)
                        .position(x: 200, y: 20)
                    
                    
                    
                    Link("https://www.epa.gov/recycle/reducing-and-reusing-basics", destination: URL(string: "https://www.epa.gov/recycle/reducing-and-reusing-basics")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 100)
                        .italic()
                    
                    Link("https://www.epa.gov/lmop/basic-information-about-landfill-gas", destination: URL(string: "https://www.epa.gov/lmop/basic-information-about-landfill-gas")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 190)
                        .italic()
                    
                    Link("https://scraplab.princeton.edu/2020/03/the-composter-how-much-can-composting-help-in-solving-the-climate-challenge/", destination: URL(string: "https://scraplab.princeton.edu/2020/03/the-composter-how-much-can-composting-help-in-solving-the-climate-challenge/")!).multilineTextAlignment(.leading)
                        .frame(width: 350, height: 500)
                        .position(x: 200, y: 290)
                        .italic()
                    
                    
                    
                    } // the sixth Zstack ends here
                
                
                Image("kwkhandsholdingplantimage-app")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top, -10)
                
                
                
                
                } // this is where the entire new Vstack ends
            
            
            
            
            } //this is where the scroll view ends
    
        } //this is where the Zstack ends
        
    } //this is where the var body thing ends
    
    func enterAnswer() {
        if compostableFoods.contains(where: { $0.lowercased() == searchingFor.lowercased() }) {
            levelStatus = 1
        
    } else {
            levelStatus = 2
            searchingFor = ""
        }
    }
    
} //this is where the entire thing ends

#Preview {
    PageTwo()
}
