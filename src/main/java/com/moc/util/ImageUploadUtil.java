package com.moc.util;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * Created by WangSu on 5/12/2017.
 */
public class ImageUploadUtil {
        public static final List<String> ALLOW_TYPES = Arrays.asList(
                "image/jpg","image/jpeg","image/png"
        );

        public static String rename(String fileName){
            int i = fileName.lastIndexOf(".");
            String str = fileName.substring(i);
            UUID uuid = UUID.randomUUID();
            return uuid+str;
        }
        public static boolean allowUpload(String post){
            return ALLOW_TYPES.contains(post);
        }
    }
