import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Vertailu {

    public static void main(String[] args) {
        File f1 = new File("esimerkit");
        ArrayList<File> esimerkit = new ArrayList<File>(Arrays.asList(f1.listFiles()));

        File f2 = new File("tulokset");
        ArrayList<File> tulokset = new ArrayList<File>(Arrays.asList(f2.listFiles()));

		boolean onnistuiko = true;
        for (int i = 0; i < esimerkit.size(); i++) {
            try {
                Scanner inputTulos = new Scanner(esimerkit.get(i));
                Scanner inputTulosExpected = new Scanner(tulokset.get(i));

                int rivi = 1;
                while (inputTulosExpected.hasNextLine()) {

                    String tulosRivi = inputTulos.nextLine();
                    String tulosExpectedRivi = inputTulosExpected.nextLine();

                    if (!tulosRivi.equals(tulosExpectedRivi)) {
                        System.out.println("VIRHE TIEDOSTOSSA: " + esimerkit.get(i).getName() + "\n");
                        System.out.println("VIRHE RIVILLÄ: " + rivi);
                        System.out.println("PITÄISI OLLA: " + tulosExpectedRivi + "\n" + "SINUN OHJELMASI: " + tulosRivi);
						onnistuiko = false;
                        break;
                    }
                    rivi ++;
                }
                inputTulos.close();
                inputTulosExpected.close();

            } catch (Exception ex) {
                ex.printStackTrace();
            }	
        }
		if (onnistuiko) {
			System.out.println("\nKaikki testit ok!\n");
		}	
    }
}