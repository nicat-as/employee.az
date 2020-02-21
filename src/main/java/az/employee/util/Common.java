package az.employee.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.UUID;

public class Common {
    public static String generateSHA(String text) {
        StringBuilder stringBuffer = new StringBuilder();

        try {
            MessageDigest messageDigestdigest = MessageDigest.getInstance("SHA-256");
            //convert the byte to hex format method 1
            // text.getBytes(StandardCharsets.UTF_8);
            byte[] hash = messageDigestdigest.digest(text.getBytes(StandardCharsets.UTF_8));
            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString((hash[i] & 0xff));
                if (hex.length() == 1) stringBuffer.append('0');
                stringBuffer.append(hex);

            }
        } catch (Exception e) {
            e.printStackTrace();

        }

        return stringBuffer.toString();
    }

    public static String generateToken() {
        UUID randomUUID = UUID.randomUUID();
        String token = generateSHA(randomUUID.toString());
        return token;
    }
}
