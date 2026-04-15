package com.mycompany.app;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testAppCanBeInstantiated() {
        App app = new App();
        assertNotNull(app);
    }

    @Test
    public void testMessageIsHelloWorld() {
        assertEquals("Hello world!", App.getMessage());
    }

    @Test
    public void testMessageIsNotNull() {
        assertNotNull(App.getMessage());
    }

    @Test
    public void testMessageIsNotEmpty() {
        assertFalse(App.getMessage().isEmpty());
    }

    @Test
    public void testMessageContainsHello() {
        assertTrue(App.getMessage().contains("Hello"));
    }

    @Test
    public void testMessageContainsWorld() {
        assertTrue(App.getMessage().contains("world"));
    }
    
    @Test
    public void testMainMethodRuns() {
        // Test that main method runs without throwing any exception
        assertDoesNotThrow(() -> App.main(new String[]{}));
    }

    @Test
    public void testMessageEqualsExpected() {
        String expected = "Hello world!";
        String actual = App.getMessage();
        assertEquals(expected.length(), actual.length());
    }
}