package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class AddPetRunner {
    @Karate.Test
    Karate addPet() {
        return Karate.run("add_pet").relativeTo(getClass());
    }

}
