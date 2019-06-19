package com.example.repository;


import com.example.model.Comment;
import com.example.model.Post;
import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.Optional;

@RunWith(SpringRunner.class)
@DataJpaTest
public class PostRepositoryIntegrationTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private PostRepository postRepository;

    @Test
    public void whenFindById_thenReturnCorrectPost() {
        // given
        Comment comment = new Comment("TestCommentAuthor", "TestCommentText");
        Post post = new Post("TestPostTitle", "TestPostAuthor", "TestPostText");

        comment.setPost(post);
        post.setComments(new ArrayList(){{ add(comment); }});

        entityManager.persist(post);
        entityManager.flush();

        // For debugging
        // Post foundPost0 = entityManager.find(Post.class, post.getId());
        // System.out.println(foundPost0.getComments().size());

        // when
        Optional<Post> foundPost = postRepository.findById(post.getId());

        // then
        Assertions.assertThat(foundPost.get().getAuthor()).isEqualTo(post.getAuthor());
        Assertions.assertThat(foundPost.get().getComments().size()).isEqualTo(1);
    }
}
