package tests;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate runAll() {
//        return Karate.run().relativeTo(getClass());
//        return Karate.run("src/test/java/tests/GetRequest.feature");
//        return Karate.run("src/test/java/tests/Put.feature");
//    	return Karate.run("src/test/java/tests/delete.feature");
        return Karate.run("src/test/java/tests/GetRequest.feature", "src/test/java/tests/configdemo.feature");
//    	return Karate.run("src/test/java/tests/configdemo.feature");
    }
}
