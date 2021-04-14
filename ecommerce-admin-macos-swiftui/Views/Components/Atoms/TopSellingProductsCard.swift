//
//  TopSellingProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.


import SwiftUI

struct TopSellingProductsCard: View {
    
    @State var products = [Product]()
    
    var body: some View {
        
        HStack {
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Top Selling Product").font(.system(size: 14, weight: .bold))
                    }
                
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("More")
                            .font(.system(size: 10, weight: .bold))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
                            .foregroundColor(.blue)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                Spacer()
                HStack{
                    ScrollView {
                        ForEach(products) { product in
                            VStack {
                            HStack(spacing: 13){

                                Image(systemName: "person")
//                                    Text(String(product.id))
                                Text(product.name.capitalized).frame(width: 100, height: 100, alignment: .leading).lineSpacing(2)
                                    .font(.system(size: 13, weight: .medium))
   
                                Spacer()
                                Text("Rp. \(String(product.price))").frame(width: 100, height: 100, alignment: .leading).lineSpacing(2).font(.system(size: 13, weight: .medium))

                            }
                            .frame(height:30)
                            .padding(5)
//                            .background(Color.red)
                            }
                        }
                    .onAppear{ productRestApi().getProducts{
                        products in
                        self.products = products
                            }
                        }
                    }
                }
                .padding(.top, 20)
            }
            .padding(13)
            .frame(width: 351, height: 301, alignment: .center)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}


struct TopSellingProductsCard_Previews: PreviewProvider {
    static var previews: some View {
       TopSellingProductsCard()
    }
}


struct ClearCell: ViewModifier {
      func body(content: Content) -> some View {
          content
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
//              .offset(x: 10)
              .padding(10)
//              .font(.system(size: 18, weight: .bold, design: .rounded))
              .foregroundColor(.black)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .preferredColorScheme(.some(.dark))
            .listStyle(PlainListStyle())
            .listRowBackground(Color.black.opacity(0.0))
      }
  }

