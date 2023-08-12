package demoblaze.demoblaze_post_Login;


import com.intuit.karate.junit5.Karate;

public class LoginRunner {

    @Karate.Test
    Karate petPost(){
        return Karate.run().relativeTo(getClass());
    }
}