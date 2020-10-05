package com.mrz.loader;

import android.content.Context;
import android.os.Environment;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Random;

public class GetIMEI {
    @SuppressWarnings({"MethodNameSameAsClassName", "OctalInteger"})
    public static String GetIMEI(Context paramContext) {
        try {
            File file = new File(paramContext.getFilesDir().getPath(), "/MRZ/"+Loader.Juego+"/signatureData.txt");
            if (file.exists()) {
                StringBuilder stringBuilder = new StringBuilder();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                    while (true) {
                        String str = bufferedReader.readLine();
                        if (str != null) {
                            stringBuilder.append(str);
                            continue;
                        }
                        break;
                    }
                    bufferedReader.close();
                    return stringBuilder.toString().trim();
                } catch (IOException tringBuilder) {
                    return String.valueOf(000000000000000);
                }
            }
        } catch (Exception e) {
            Log.e("MRZ","FAKE IMEI ERROR : "+e);
        }
        return String.valueOf(000000000000000);
    }
}