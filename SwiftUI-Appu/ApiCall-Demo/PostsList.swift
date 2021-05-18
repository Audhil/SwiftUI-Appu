//
//  PostsList.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 18/05/21.
//

import SwiftUI

struct PostsList: View {
    
    @State
    private var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .onAppear(){
            API().getPosts{ posts in
                self.posts = posts
            }
        }
    }
}

struct PostsList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList()
    }
}
