package examples.posts;

import com.intuit.karate.junit5.Karate;

public class CreatePostsRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("create_posts").relativeTo(getClass());
    }
}
