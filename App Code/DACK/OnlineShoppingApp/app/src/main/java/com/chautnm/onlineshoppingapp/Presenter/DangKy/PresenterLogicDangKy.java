package com.chautnm.onlineshoppingapp.Presenter.DangKy;

import com.chautnm.onlineshoppingapp.Model.DangNhap_DangKy.ModelDangKy;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.NhanVien;
import com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.ViewDangKy;

/**
 * Created by TOSHIBA on 5/21/2018.
 */

public class PresenterLogicDangKy implements IPresenterDangKy{
    ViewDangKy viewDangKy;
    ModelDangKy modelDangKy;

    public PresenterLogicDangKy(ViewDangKy viewDangKy){
        this.viewDangKy = viewDangKy;
        modelDangKy = new ModelDangKy();
    }

    @Override
    public void ThucHienDangKy(NhanVien nhanvien) {
        boolean kiemtra = modelDangKy.DangKyThanhVien(nhanvien);
        if(kiemtra){
            viewDangKy.DangKyThangCong();
        }else{
            viewDangKy.DangKyThatBai();
        }
    }
}
