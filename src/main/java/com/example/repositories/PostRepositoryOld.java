package com.example.repositories;

import com.example.models.Post;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component("PostRepositoryOld")
public class PostRepositoryOld {

    List<Post> posts = new ArrayList(){{
        add(new Post(1,"Ar programavimas kenkia sveikatai?", "Mindaugas Štuopeca", "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\""));
        add(new Post(2,"Kaip laikyti katinus?", "Jonas Branskienis", "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text."));
    }};

    public List<Post> getAllPosts() {
        return posts;
    }

    public Post getPostsById(int id) {
        Post postToReturn = null;
        for (Post post : posts){
            if(post.getId() == id){
                postToReturn = post;
                break;
            }
        }
        return postToReturn;
    }

    public void addPost(String title, String author, String text) {
        posts.add(new Post(posts.size() + 1, title, author, text));
    }
}
