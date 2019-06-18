package com.example.controllers;

import com.example.models.Post;
import com.example.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogPostController {

    @Autowired
    private PostRepository postRepository;

    // get all posts
    @RequestMapping(method=RequestMethod.GET, path="/post")
    public String getAllPosts(Model model) {
        model.addAttribute("posts", postRepository.findAll());
        return "blogpost/posts";
    }

    // get post by id
    @RequestMapping(method=RequestMethod.GET, path="/post/{id}")
    public String getPostById(Model model, @PathVariable int id) {
        model.addAttribute("post", postRepository.findById(id).get());
        return "blogpost/post";
    }

    // create new post
    @RequestMapping(method=RequestMethod.POST, path="/post",
            consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addTyrimasForPatient(Post post)
            // @RequestParam("title") String title,
            // @RequestParam("author") String author,
            // @RequestParam("text") String text)
    {
        // postRepository.addPost(title, author, text);
        postRepository.save(post);
        return "redirect:post";
    }
}

// TODO :: update
// curl http://localhost:8080/post -s
// curl http://localhost:8080/post/1 -s
// curl -X POST -H "Content-Type:application/json" -d '{"author":"Samwise Gamgee", "text":"gardener"}' http://localhost:8080/post -s
// curl -X POST -H "Authorization: Basic YWRtaW46cGFzc3dvcmQ=" -H "Content-Type:application/json" -d '{"author":"Samwise Gamgee", "text":"gardener"}' http://localhost:8080/post -s
