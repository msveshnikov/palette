package palette;

import org.apache.sanselan.ImageReadException;
import org.apache.sanselan.Sanselan;
import org.apache.sanselan.common.IImageMetadata;
import org.apache.sanselan.formats.jpeg.JpegImageMetadata;
import org.apache.sanselan.formats.tiff.TiffField;
import org.apache.sanselan.formats.tiff.constants.ExifTagConstants;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ImageHelper {
    static BufferedImage img;
    static String file;

    public static Date getShotDate(final String fileName) throws ImageReadException,
            IOException, ParseException {
        // get all metadata stored in EXIF format (ie. from JPEG or TIFF).
        final File file = new File(fileName);
        final IImageMetadata metadata = Sanselan.getMetadata(file);
        if (metadata instanceof JpegImageMetadata) {
            final JpegImageMetadata jpegMetadata = (JpegImageMetadata) metadata;
            //System.out.println("file: " + file.getPath());
            final TiffField field = jpegMetadata.findEXIFValue(ExifTagConstants.EXIF_TAG_DATE_TIME_ORIGINAL);
            if (field == null) {
                return null;
            } else {
                //System.out.println(field.getStringValue());
                return new SimpleDateFormat("yyyy:MM:dd hh:mm:ss").parse(field.getStringValue());
            }
        }
        return null;
    }

    public static String getRandomPixel(final String fileName) throws IOException {
        if (fileName!=file) {
            img = ImageIO.read(new File(fileName));
            file=fileName;
        }
        String hex = String.format("#%06X", (0xFFFFFF & img.getRGB((int) (Math.random() * img.getWidth()), (int) (Math.random() * img.getHeight()))));
        //System.out.println(hex);
        return hex;
    }
}