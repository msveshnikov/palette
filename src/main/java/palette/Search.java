package palette;

import org.apache.sanselan.ImageReadException;
import org.joda.time.DateTime;
import org.joda.time.Period;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.TreeMap;

public class Search {

    public static String getMostClose(String dir) throws IOException, ImageReadException, ParseException {
        TreeMap<Integer, String> map = new TreeMap<Integer, String>();
        File[] matchingFiles = new File(dir).listFiles();
        for (File file : matchingFiles) {
            Date shotDate = ImageHelper.getShotDate(dir + "/" + file.getName());
            if (shotDate != null) {
                int diff = new Period(new DateTime(shotDate), new DateTime()).getMinutes();
                map.put(diff, dir + "/" + file.getName());
            }
        }
        return map.firstEntry().getValue();
    }
}
