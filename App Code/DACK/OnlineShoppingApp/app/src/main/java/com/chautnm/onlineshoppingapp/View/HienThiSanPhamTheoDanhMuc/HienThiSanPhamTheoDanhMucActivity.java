package com.chautnm.onlineshoppingapp.View.HienThiSanPhamTheoDanhMuc;

import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.chautnm.onlineshoppingapp.Adapter.AdapterTopDienThoaiDienTu;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.Presenter.HienThiSanPhamTheoDanhMuc.PresenterLogicHienThiSanPhamTheoDanhMuc;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.TrangChu.ViewHienThiSanPhamTheoDanhMuc;

import java.util.List;

/**
 * Created by minhh on 5/23/2018.
 */

public class HienThiSanPhamTheoDanhMucActivity extends AppCompatActivity implements ViewHienThiSanPhamTheoDanhMuc, View.OnClickListener {
     RecyclerView recyclerView;
     Button btnThayDoiTrangThaiRecycle;
     boolean draggrid =true;
     RecyclerView.LayoutManager layoutManager;
     PresenterLogicHienThiSanPhamTheoDanhMuc sanPhamTheoDanhMuc;
     AdapterTopDienThoaiDienTu adapterTopDienThoaiDienTu;
     int masp;
     boolean kiemtra;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_hienthisanphamtheodanhmuc);

        recyclerView = (RecyclerView) findViewById(R.id.recycleViewHienThiSanPhamTheoDanhMuc);
        btnThayDoiTrangThaiRecycle=(Button) findViewById(R.id.btnThayDoiTrangThaiRecycler);

        Intent intent = getIntent();
        masp= intent.getIntExtra("MALOAI",0);
        String tensp = intent.getStringExtra("TENLOAI");
        kiemtra = intent.getBooleanExtra("KIEMTRA",false);
        //Toast.makeText(this,masp+tensp+kiemtra,Toast.LENGTH_LONG).show();

        sanPhamTheoDanhMuc = new PresenterLogicHienThiSanPhamTheoDanhMuc(this);
        sanPhamTheoDanhMuc.LayDanhSachSanPhamTheoMaLoai(masp,kiemtra);

        btnThayDoiTrangThaiRecycle.setOnClickListener(this);
    }

    @Override
    public void HienThiDanhSachSanPham(List<SanPham> sanPhamList) {

        if(draggrid==true){
           layoutManager =new GridLayoutManager(HienThiSanPhamTheoDanhMucActivity.this,2);
            adapterTopDienThoaiDienTu = new AdapterTopDienThoaiDienTu(HienThiSanPhamTheoDanhMucActivity.this,R.layout.custom_layout_topdienthoaivamaytinhbang,sanPhamList);
        }else {
            layoutManager = new LinearLayoutManager(HienThiSanPhamTheoDanhMucActivity.this);
            adapterTopDienThoaiDienTu =new AdapterTopDienThoaiDienTu(HienThiSanPhamTheoDanhMucActivity.this, R.layout.custom_layout_list_topdienthoaivamaytinhbang, sanPhamList);
        }

        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setAdapter(adapterTopDienThoaiDienTu);
        adapterTopDienThoaiDienTu.notifyDataSetChanged();
    }

    @Override
    public void LoiHienThiDanhSachSanPham() {

    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        switch (id){
            case R.id.btnThayDoiTrangThaiRecycler:
                draggrid=!draggrid;
                sanPhamTheoDanhMuc.LayDanhSachSanPhamTheoMaLoai(masp,kiemtra);
                 ;break;
        }
    }
}
