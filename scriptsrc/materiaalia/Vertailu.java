
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import org.fusesource.jansi.AnsiConsole;
import static org.fusesource.jansi.Ansi.*;
import static org.fusesource.jansi.Ansi.Color.*;

public class Vertailu
{

    public static final String SEPARATOR_LINE = "--------------------------------------------------------------------------------------------";
    public static final String SEPARATOR = " | ";

    public static void main(String[] args)
    {
        AnsiConsole.systemInstall();
        File f0 = new File("syotteet");
        ArrayList<File> tulosteet = new ArrayList<File>(Arrays.asList(f0.listFiles()));
        File f1 = new File("esimerkit");
        ArrayList<File> esimerkit = new ArrayList<File>(Arrays.asList(f1.listFiles()));

        File f2 = new File("tulokset");
        ArrayList<File> tulokset = new ArrayList<File>(Arrays.asList(f2.listFiles()));
        ArrayList<String> eiOKtestit = new ArrayList<String>();
        boolean onnistuiko = true;

        for (int i = 0; i < esimerkit.size(); i++)
        {
            System.out.println("\n");
            System.out.println(ansi().fg(YELLOW).a(SEPARATOR_LINE).reset());
            System.out.println(ansi().fg(MAGENTA).a(esimerkit.get(i).getName()).reset());
            System.out.println(ansi().fg(YELLOW).a(SEPARATOR_LINE).reset());
            System.out.println("\n");
            ArrayList<String> firstInputs = new ArrayList<String>();
            ArrayList<String> secondInputs = new ArrayList<String>();
            ArrayList<String> thirdInputs = new ArrayList<String>();
            int firstLength = 0;
            int secondLength = 0;
            int thirdLength = 0;

            try
            {
                Scanner inputFeed = new Scanner(tulosteet.get(i));
                Scanner inputTulos = new Scanner(esimerkit.get(i));
                Scanner inputTulosExpected = new Scanner(tulokset.get(i));

                while (inputTulosExpected.hasNextLine())
                {
                    String tulosRivi = inputTulos.nextLine();
                    String tulosExpectedRivi = inputTulosExpected.nextLine();
                    String inputRivi = "";
                    if (inputFeed.hasNextLine())
                    {
                        if (tulosExpectedRivi.contains("/>") || tulosExpectedRivi.contains("Error!"))
                        {
                            inputRivi = inputFeed.nextLine();
                        }
                    }
                    if (inputRivi.length() > firstLength)
                    {
                        firstLength = inputRivi.length();
                    }
                    if (tulosExpectedRivi.length() > secondLength)
                    {
                        secondLength = tulosExpectedRivi.length();
                    }
                    if (tulosRivi.length() > thirdLength)
                    {
                        thirdLength = tulosRivi.length();
                    }
                    if(!tulosExpectedRivi.equals(tulosRivi) && !eiOKtestit.contains(esimerkit.get(i).getName()))
                    {
                        eiOKtestit.add(esimerkit.get(i).getName());
                    }
                    firstInputs.add(inputRivi);
                    secondInputs.add(tulosExpectedRivi);
                    thirdInputs.add(tulosRivi);
                }
                inputTulos.close();
                inputTulosExpected.close();

            } catch (Exception ex)
            {
                eiOKtestit.add(esimerkit.get(i).getName());
            }
            double correct = 0;
            double rivi = 1;
            for (int j = 0; j < secondInputs.size(); j++)
            {
                String rivi_number = "";
                if ((int) rivi < 10)
                {
                    rivi_number = "0" + (int) rivi;
                }
                else
                {
                    rivi_number = "" + (int) rivi;
                }
                String firstValues = firstInputs.get(j);
                String secondValues = secondInputs.get(j);
                String thirdValues = thirdInputs.get(j);
                while (firstValues.length() < ((firstLength + 2)))
                {
                    firstValues += " ";
                }
                while (secondValues.length() < ((secondLength + 2)))
                {
                    secondValues += " ";
                }
                while (thirdValues.length() < ((thirdLength + 2)))
                {
                    thirdValues += " ";
                }

                if (thirdInputs.get(j).equals(secondInputs.get(j)))
                {
                    System.out.println(
                            ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(firstValues)
                            + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(secondValues)
                            + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(thirdValues).reset());
                    correct = correct + 1;
                }
                else
                {
                    onnistuiko = false;
                    System.out.println(
                            ansi().bg(WHITE).a(ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(firstValues)
                                    + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(RED).a(secondValues)
                                    + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(thirdValues)).reset());
                }
                rivi = rivi + 1;
            }
            System.out.println("\n\n");
            System.out.println(ansi().fg(YELLOW).a(SEPARATOR_LINE).reset());
            double percentage = correct / (rivi - 1);
            if ((percentage * 100) > 75)
            {
                System.out.println("PISTEESI: " + ansi().fg(GREEN).a((int) correct + "/" + ((int) rivi - 1)).reset());
            }
            else
            {
                System.out.println("PISTEESI: " + ansi().fg(RED).a((int) correct + "/" + ((int) rivi - 1)).reset());
            }
            System.out.println(ansi().fg(YELLOW).a(SEPARATOR_LINE).reset());
        }
        if (onnistuiko)
        {
            System.out.println("\nKaikki testit ok!\n");
        }
        else
        {
            System.out.println("Testit jotka ei OK:");
            for(int i = 0; i < eiOKtestit.size(); i++)
            {
                System.out.println(eiOKtestit.get(i));
            }
        }
    }
}
/*
                        System.out.println(
                                ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(zero_part)
                                + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(first_part)
                                + SEPARATOR + ansi().fg(YELLOW).a(rivi_number) + ". " + ansi().fg(GREEN).a(second_part).reset());
 */
