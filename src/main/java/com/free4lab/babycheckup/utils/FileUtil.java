package com.free4lab.babycheckup.utils;

import java.io.*;

/**
 * 保存图片
 */
public class FileUtil {

    //    public static final String FILE_ABSOLUTE_PATH = "../../../opt/file/baby/care/";
//    public static final String FILE_ABSOLUTE_PATH = "../../../opt/file/baby/img/";

    public static final String FILE_ABSOLUTE_PATH = "C:\\code\\image\\";

    public static final String FILE_VIRTUAL_PATH = "/image/";

    public static void saveFile(File file, String path) {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        try {

            inputStream = new FileInputStream(file);
            outputStream = new FileOutputStream(path);
            int temp;
            while ((temp = inputStream.read()) != -1) {
                outputStream.write(temp);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
