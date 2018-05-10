package com.chautnm.onlineshoppingapp.ConnectInternet;

import android.net.Uri;
import android.os.AsyncTask;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpCookie;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

/**
 * Created by minhh on 5/9/2018.
 */

public class DownloadJSON extends AsyncTask<String,Void,String> {
    String duongdan;
    List<HashMap<String, String>> attrs;
    StringBuilder dulieu;
    public DownloadJSON(String duongdan) {
        this.duongdan = duongdan;
    }

    public DownloadJSON(String duongdan, List<HashMap<String, String>> attrs) {
        this.duongdan = duongdan;
        this.attrs = attrs;
    }

    @Override
    protected String doInBackground(String... strings) {
        try {
            URL url = new URL(duongdan);
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
            httpsURLConnection.connect();

            if(attrs.size()!=0)
            {
                methodPost(httpsURLConnection);
            }else{
                methodget(httpsURLConnection);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return dulieu.toString();
    }

    //get method
    private String methodget(HttpsURLConnection httpURLConnection){
        String data ="";
        InputStream inputStream=null;
        try {
            httpURLConnection.connect();
            inputStream = httpURLConnection.getInputStream();
            InputStreamReader reader = new InputStreamReader(inputStream);
            BufferedReader bufferedReader = new BufferedReader(reader);

            dulieu = new StringBuilder();
            String line = "";
            while ((line = bufferedReader.readLine()) != null) {
                dulieu.append(line);
            }
            data =dulieu.toString();
            bufferedReader.close();
            reader.close();
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }

    private String methodPost(HttpsURLConnection httpsURLConnection){
        String data="";
        String key="";
        String value="";
        try {
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);

            Uri.Builder builder=new Uri.Builder();
            int count= attrs.size();
            for(int i=0;i<count;i++){
               for(Map.Entry<String,String> values:attrs.get(i).entrySet()){
                     key =values.getKey();
                     value=values.getValue();
               }
               builder.appendQueryParameter(key,value);
            }
            String query=builder.build().getEncodedQuery();
            OutputStream outputStream =httpsURLConnection.getOutputStream();
            OutputStreamWriter streamWriter=new OutputStreamWriter(outputStream);
            BufferedWriter writer=new BufferedWriter(streamWriter);

            writer.write(query);
            writer.flush();
            writer.close();
            streamWriter.close();
            outputStream.close();

            data=methodget(httpsURLConnection);
        } catch (ProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }
}
