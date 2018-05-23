package com.chautnm.onlineshoppingapp.Presenter.HienThiSanPhamTheoDanhMuc;

import com.chautnm.onlineshoppingapp.Model.HienThiSanPhamTheoDanhMuc.ModelHienThiSanPhamTheoDanhMuc;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.Presenter.TrangChu.XuLyMenu.PresenterLogicXuLyMenu;
import com.chautnm.onlineshoppingapp.View.TrangChu.ViewHienThiSanPhamTheoDanhMuc;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by minhh on 5/23/2018.
 */

public class PresenterLogicHienThiSanPhamTheoDanhMuc implements IPresenterHienThiSanPhamTheoDanhMuc{

    ViewHienThiSanPhamTheoDanhMuc viewHienThiSanPhamTheoDanhMuc;
   ModelHienThiSanPhamTheoDanhMuc modelHienThiSanPhamTheoDanhMuc;
    public PresenterLogicHienThiSanPhamTheoDanhMuc(ViewHienThiSanPhamTheoDanhMuc viewHienThiSanPhamTheoDanhMuc) {
            this.viewHienThiSanPhamTheoDanhMuc=viewHienThiSanPhamTheoDanhMuc;
            modelHienThiSanPhamTheoDanhMuc=new ModelHienThiSanPhamTheoDanhMuc();
    }

    @Override
    public void LayDanhSachSanPhamTheoMaLoai(int masp,boolean kiemtra) {
        List<SanPham> sanPhamList = new ArrayList<>();
        if (kiemtra) {
            sanPhamList = modelHienThiSanPhamTheoDanhMuc.LayDanhSachSanPhamTheoMaLoai(masp, "DANHSACHSANPHAM", "LayDanhSachSanPhamTheoMaLoaiDanhMuc", 0);
        } else
            sanPhamList = modelHienThiSanPhamTheoDanhMuc.LayDanhSachSanPhamTheoMaLoai(masp, "DANHSACHSANPHAM", "LayDanhSachSanPhamTheoMaThuongHieu", 0);

        if (sanPhamList.size() > 0){
            viewHienThiSanPhamTheoDanhMuc.HienThiDanhSachSanPham(sanPhamList);
        }else         {
            viewHienThiSanPhamTheoDanhMuc.LoiHienThiDanhSachSanPham();
        }
    }

}
