package palette;

import org.apache.sanselan.ImageReadException;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.TreeMap;

public class Search {

    public static String getMostClose(String dir) throws IOException, ImageReadException, ParseException {
        long now = new Date().getTime();
        long MILLIS_PER_DAY = 24 * 60 * 60 * 1000;
        long timePortion = now % MILLIS_PER_DAY;

        TreeMap<Long, String> myMap = new TreeMap<Long, String>();

        File[] matchingFiles = new File(dir).listFiles();
        for (File file : matchingFiles) {
            myMap.put(ImageHelper.getShotDate(dir + "/" + file.getName()).getTime() % MILLIS_PER_DAY - timePortion, dir + "/" + file.getName());
            System.out.println(file.getName() + " " + ImageHelper.getShotDate(dir + "/" + file.getName()).toString());
        }
        return myMap.firstEntry().getValue();
        //String firstOther = myMap.get(myMap.firstKey());
    }
}
