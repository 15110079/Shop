package com.chautnm.onlineshoppingapp.Presenter.TrangChu_DienTu;

import com.chautnm.onlineshoppingapp.Model.DienTu.ModelDienTu;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;
import com.chautnm.onlineshoppingapp.View.TrangChu.ViewDienTu;

import java.util.List;

/**
 * Created by TOSHIBA on 5/18/2018.
 */

public class PresenterLogicDienTu implements IPresenterDienTu {

    ViewDienTu viewDienTu;
    ModelDienTu modelDienTu;

    public PresenterLogicDienTu(ViewDienTu viewDienTu){
        this.viewDienTu = viewDienTu;
        modelDienTu = new ModelDienTu();

    }

    @Override
    public void LayDanhSachDienTu() {
        List<ThuongHieu> thuongHieuList = modelDienTu.LayDanhSachThuongHieuLon();
        List<SanPham> sanPhamList=modelDienTu.LayDanhSachSanPhamTOP();
        if(thuongHieuList.size() > 0 && sanPhamList.size()> 0) {
            viewDienTu.HienThiDanhSach(thuongHieuList,sanPhamList);
        }
    }

}

