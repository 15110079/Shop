package com.chautnm.onlineshoppingapp.View.ManHinhChao;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.TrangChu.TrangChuActivity;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class ManHinhChaoActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.manhinhchao_layout);

        /**set time -> chuyển trang
         **/
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    Thread.sleep(1000);
                }catch (Exception e){

                }finally {
                    Intent iTrangChu = new Intent(ManHinhChaoActivity.this, TrangChuActivity.class);
                    startActivity(iTrangChu);
                }
            }
        });

        thread.start();
    }
}
