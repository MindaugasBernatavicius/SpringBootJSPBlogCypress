package com.example.controller;

import com.example.model.Comment;
import com.example.model.Post;
import com.example.repository.CommentRepository;
import com.example.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommentControler {

    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    private PostRepository postRepository;

    // add comment for a post
    // Ref: https://www.callicoder.com/hibernate-spring-boot-jpa-one-to-many-mapping-example/
    @RequestMapping(method=RequestMethod.POST, path="/post/{postId}/comment")
    public String addCommentForPost(Comment comment, @PathVariable int postId) {
        Post p = postRepository.findById(postId).get();
        comment.setPost(p);
        commentRepository.save(comment);
        return "redirect:/post/" + postId;
    }

    @RequestMapping(method=RequestMethod.POST, path="/post/{postId}/comment/{commentId}/delete")
    public String deleteCommentForPost(@PathVariable int postId, @PathVariable int commentId) {
        commentRepository.delete(commentRepository.findById(commentId).get());
        return "redirect:/post/" + postId;
    }
}