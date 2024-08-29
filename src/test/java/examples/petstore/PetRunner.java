package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class PetRunner {
    @Karate.Test
    Karate addPet() {
        return Karate.run("add_pet").relativeTo(getClass());
    }

    @Karate.Test
    Karate searchPet() {
        return Karate.run("search_pet").relativeTo(getClass());
    }

    @Karate.Test
    Karate updatePet() {
        return Karate.run("update_pet").relativeTo(getClass());
    }
}
