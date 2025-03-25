     HStack {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 100, height: 50)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(appetizer.name)
                            .font(.headline)
                        Text("$8.98")
                    }
                    .padding(.leading)
                    
                }