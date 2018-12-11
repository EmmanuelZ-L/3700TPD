package TPDz;

// masks password text entered from keyboard

import java.io.Console;

public final class MaskPassword {

    // all constructors should be private for static class
    private MaskPassword(){
    }

    public static String getPassword(String prompt) {

        Console console = System.console();

        if (console == null) {
            System.out.println("Couldn't get Console instance");
            System.exit(1);
        }

        char passwordArray[] = console.readPassword(prompt);

        return new String(passwordArray);

    }

}