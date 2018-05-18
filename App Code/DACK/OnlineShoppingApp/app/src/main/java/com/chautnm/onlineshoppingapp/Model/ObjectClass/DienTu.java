package com.chautnm.onlineshoppingapp.Model.ObjectClass;

import java.util.List;

/**
 * Created by TOSHIBA on 5/18/2018.
 */

public class DienTu {
    List<ThuongHieu> thuongHieus;
    List<SanPham> sanPhams;

    public String getHinhSanPham() {
        return HinhSanPham;
    }

    public void setHinhSanPham(String hinhSanPham) {
        HinhSanPham = hinhSanPham;
    }

    String HinhSanPham;

    public List<ThuongHieu> getThuongHieus() {
        return thuongHieus;
    }

    public void setThuongHieus(List<ThuongHieu> thuongHieus) {
        this.thuongHieus = thuongHieus;
    }

    public List<SanPham> getSanPhams() {
        return sanPhams;
    }

    public void setSanPhams(List<SanPham> sanPhams) {
        this.sanPhams = sanPhams;
    }



}
