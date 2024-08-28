package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class SearchPetRunner {

    @Karate.Test
    Karate searchPet() {
        return Karate.run("search_pet").relativeTo(getClass());
    }
}
