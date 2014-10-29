package palette;

import org.apache.sanselan.ImageReadException;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.TreeMap;

public class Search {

    public static String getMostClose(String dir) throws IOException, ImageReadException, ParseException {
        long now = new Date().getTime() + 6 * 60 * 60 * 1000;
        long MILLIS_PER_DAY = 24 * 60 * 60 * 1000;
        long timePortion = now % MILLIS_PER_DAY;

        TreeMap<Long, String> myMap = new TreeMap<Long, String>();

        File[] matchingFiles = new File(dir).listFiles();
        for (File file : matchingFiles) {
            Date shotDate = ImageHelper.getShotDate(dir + "/" + file.getName());
            if (shotDate != null) {
                long diff = Math.abs(shotDate.getTime() % MILLIS_PER_DAY - timePortion);
                if (diff > MILLIS_PER_DAY / 2) diff -= MILLIS_PER_DAY;
                diff = Math.abs(diff);
                myMap.put(diff, dir + "/" + file.getName());
                //System.out.println(file.getName() + " " + shotDate.toString());
            }
        }
        System.out.println(myMap.firstKey());
        System.out.println(myMap.get(myMap.firstKey()));
        return myMap.get(myMap.firstKey());
    }
}
