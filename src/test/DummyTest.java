package test;

import org.junit.Test;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created with IntelliJ IDEA.
 * User: Linus
 * Date: 2014-09-24
 * Time: 20:30
 * To change this template use File | Settings | File Templates.
 *
 */

public class DummyTest {



    @Test
    public void testDummy(){



        System.out.println("Hello world");
        assertThat("text", false, is(true));
    }
}
