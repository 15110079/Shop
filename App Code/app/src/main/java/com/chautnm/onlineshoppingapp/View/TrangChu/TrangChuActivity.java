package com.chautnm.onlineshoppingapp.View.TrangChu;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;

import com.chautnm.onlineshoppingapp.Adapter.ViewPagerAdapter;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;
import com.chautnm.onlineshoppingapp.Presenter.TrangChu.XuLyMenu.PresenterLogicXuLyMenu;
import com.chautnm.onlineshoppingapp.R;

import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class TrangChuActivity extends AppCompatActivity implements ViewXuLyMenu {
    Toolbar toolbar;
    TabLayout tabLayout;
    ViewPager viewPager;

    DrawerLayout drawerLayout;
    ActionBarDrawerToggle drawerToggle;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.trangchu_layout);
        toolbar= findViewById(R.id.toolbar);
        tabLayout = findViewById(R.id.tablayout);
        viewPager=findViewById(R.id.viewpager);
        drawerLayout=findViewById(R.id.drawerLayout);

        //tao su kien open/close menu da cap
        drawerToggle = new ActionBarDrawerToggle(this,drawerLayout,R.string.open,R.string.close);
        drawerLayout.addDrawerListener(drawerToggle);
        setSupportActionBar(toolbar); //menu

        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        drawerToggle.syncState();

        /**
         *Trước khi setWithViewPager ,phải truyền adapter vào viewPager
         * khởi tạo adapte
         * gán vào viewPager
         */
        ViewPagerAdapter adapter = new ViewPagerAdapter(getSupportFragmentManager());
        viewPager.setAdapter(adapter);
        tabLayout.setupWithViewPager(viewPager);

        PresenterLogicXuLyMenu presenterLogicXuLyMenu=new PresenterLogicXuLyMenu(this);
        presenterLogicXuLyMenu.LayDanhSachMenu();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menutrangchu,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (drawerToggle.onOptionsItemSelected(item)) {
            return true;
        }
        return true;
    }

    @Override
    public void HienThiDanhSachMenu(List<LoaiSanPham> loaiSanPhams) {

    }
}
