package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }

    @Karate.Test
    Karate registerUsers() {
        return Karate.run("register_users").relativeTo(getClass());
    }

    @Karate.Test
    Karate getUsers() {
        return Karate.run("get_users").relativeTo(getClass());
    }

}
