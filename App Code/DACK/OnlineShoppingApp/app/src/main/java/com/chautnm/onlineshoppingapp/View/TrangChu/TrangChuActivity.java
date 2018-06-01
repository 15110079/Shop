package com.chautnm.onlineshoppingapp.View.TrangChu;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;

import com.chautnm.onlineshoppingapp.Adapter.ExpandAdapter;
import com.chautnm.onlineshoppingapp.Adapter.ViewPagerAdapter;
import com.chautnm.onlineshoppingapp.Model.DangNhap_DangKy.ModelDangNhap;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;
import com.chautnm.onlineshoppingapp.Presenter.TrangChu.XuLyMenu.PresenterLogicXuLyMenu;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.DangNhapActivity;

import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class TrangChuActivity extends AppCompatActivity implements ViewXuLyMenu, AppBarLayout.OnOffsetChangedListener{
    public static final String SERVER_NAME = "http://172.16.72.131/weblazada/loaisanpham.php";
    public static final String SERVER= "http://172.16.72.131/weblazada";


    Toolbar toolbar;
    TabLayout tabLayout;
    ViewPager viewPager;
    DrawerLayout drawerLayout;
    ActionBarDrawerToggle drawerToggle;
    ExpandableListView expandableListView;
    CollapsingToolbarLayout collapsingToolbarLayout;
    AppBarLayout appBarLayout;
    Menu menu;
    ModelDangNhap modelDangNhap;
    MenuItem itemDangNhap,menuITDangXuat;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.trangchu_layout);

        toolbar= findViewById(R.id.toolbar);
        tabLayout = findViewById(R.id.tabs);
        viewPager=findViewById(R.id.viewpager);
        drawerLayout=findViewById(R.id.drawerLayout);
        expandableListView=findViewById(R.id.expandMenu);
        collapsingToolbarLayout=findViewById(R.id.collapsing_toolbar);
        appBarLayout=findViewById(R.id.appbar);

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
        modelDangNhap = new ModelDangNhap();

        //set sự kiện cho appBar
        appBarLayout.addOnOffsetChangedListener(this);
    }

    @Override
    public boolean onCreateOptionsMenu(final Menu menu) {
        getMenuInflater().inflate(R.menu.menutrangchu,menu);
        this.menu = menu;

        itemDangNhap = menu.findItem(R.id.itDangNhap);
        menuITDangXuat = menu.findItem(R.id.itDangXuat);

        String tennv = modelDangNhap.LayCachedDangNhap(this);
        if(!tennv.equals("")){
            itemDangNhap.setTitle(tennv);
        }
        if(!tennv .equals("")){
            menuITDangXuat.setVisible(true);
        }

        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (drawerToggle.onOptionsItemSelected(item)) {
            return true;
        } 
        int id = item.getItemId();
        switch (id){
            case R.id.itDangNhap:
                if(modelDangNhap.LayCachedDangNhap(this).equals("")){
                    Intent iDangNhap = new Intent(this, DangNhapActivity.class);
                    startActivity(iDangNhap);
                };break;
            case R.id.itDangXuat:
                if(!modelDangNhap.LayCachedDangNhap(this).equals("")){
                    modelDangNhap.CapNhatCachedDangNhap(this,"");
                    this.menu.clear();
                    this.onCreateOptionsMenu(this.menu);
                }
                break;

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

    @Override
    public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
        if(collapsingToolbarLayout.getHeight() + verticalOffset <=  1.5 * ViewCompat.getMinimumHeight(collapsingToolbarLayout)){
            LinearLayout linearLayout = appBarLayout.findViewById(R.id.lnSearch);
            linearLayout.animate().alpha(0).setDuration(200);

        }else{
            LinearLayout linearLayout = appBarLayout.findViewById(R.id.lnSearch);
            linearLayout.animate().alpha(1).setDuration(200);

        }

    }
}
