package com.chautnm.onlineshoppingapp.View.TrangChu;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.DienTu;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;

import java.util.List;

/**
 * Created by TOSHIBA on 5/18/2018.
 */

public interface ViewDienTu {
    void HienThiDanhSach (List<ThuongHieu> thuongHieus, List<SanPham> sanPhamList);
}
