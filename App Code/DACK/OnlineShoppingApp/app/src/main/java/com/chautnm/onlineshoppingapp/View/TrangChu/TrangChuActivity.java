package com.chautnm.onlineshoppingapp.View.TrangChu;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.widget.ExpandableListView;

import com.chautnm.onlineshoppingapp.Adapter.ExpandAdapter;
import com.chautnm.onlineshoppingapp.Adapter.ViewPagerAdapter;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;
import com.chautnm.onlineshoppingapp.Presenter.TrangChu.XuLyMenu.PresenterLogicXuLyMenu;
import com.chautnm.onlineshoppingapp.R;

import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class TrangChuActivity extends AppCompatActivity implements ViewXuLyMenu {
    public static final String SERVER_NAME = "http://192.168.1.110/weblazada/loaisanpham.php";
    public static final String SERVER= "http://192.168.1.110/weblazada";


    Toolbar toolbar;
    TabLayout tabLayout;
    ViewPager viewPager;
    DrawerLayout drawerLayout;
    ActionBarDrawerToggle drawerToggle;
    ExpandableListView expandableListView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.trangchu_layout);

        toolbar= findViewById(R.id.toolbar);
        tabLayout = findViewById(R.id.tablayout);
        viewPager=findViewById(R.id.viewpager);
        drawerLayout=findViewById(R.id.drawerLayout);
        expandableListView=findViewById(R.id.expandMenu);

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

        PresenterLogicXuLyMenu LogicXuLyMenu=new PresenterLogicXuLyMenu(this);
        LogicXuLyMenu.LayDanhSachMenu();
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
    public void HienThiDanhSachMenu(List<LoaiSanPham> loaiSanPhamList) {
       // Log.d("kiemtra",loaiSanPhamList.get(0).getTENLOAISP());

        //khởi tạo adapter (du lieu danh sach menu cha ) gán vào expandableListView
        ExpandAdapter expandAdapter =new ExpandAdapter(this,loaiSanPhamList);
        expandableListView.setAdapter(expandAdapter);
        expandAdapter.notifyDataSetChanged();
    }
}
