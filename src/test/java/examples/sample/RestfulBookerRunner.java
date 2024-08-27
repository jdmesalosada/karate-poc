package examples.sample;

import com.intuit.karate.junit5.Karate;

public class RestfulBookerRunner {

    @Karate.Test
    Karate testRestfulBooker() {
        return Karate.run("restful_booker").relativeTo(getClass());
    }

}
