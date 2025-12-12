public class App {

    public static void main(String[] args) {
        System.out.println("Hello SonarQube Test!");

        int a = 5;
        int b = 0;

        // Une mauvaise pratique exprès (division par zero)
        try {
            int result = a / b;
            System.out.println(result);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }

        // Une méthode inutile exprès — SonarQube va détecter
        uselessMethod();
    }

    public static void uselessMethod() {
        System.out.println("This method is useless.");
    }
}
