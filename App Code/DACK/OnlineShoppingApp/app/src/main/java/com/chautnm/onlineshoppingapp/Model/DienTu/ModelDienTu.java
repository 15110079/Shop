package com.chautnm.onlineshoppingapp.Model.DienTu;

import com.chautnm.onlineshoppingapp.ConnectInternet.DownloadJSON;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;
import com.chautnm.onlineshoppingapp.Model.TrangChu.XuLyMenu.XuLyJSONMenu;
import com.chautnm.onlineshoppingapp.View.TrangChu.TrangChuActivity;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;

/**
 * Created by TOSHIBA on 5/17/2018.
 */

public class ModelDienTu {
    public List<ThuongHieu> LayDanhSachThuongHieuLon(){
        List<ThuongHieu> thuongHieuList = new ArrayList<>();

        List<HashMap<String,String>> attrs = new ArrayList<>();
        String dataJSON = "";

        String duongdan = TrangChuActivity.SERVER_NAME;

        HashMap<String,String> hsHam = new HashMap<>();
        hsHam.put("ham","LayDanhSachCacThuongHieuLon");

        attrs.add(hsHam);

        DownloadJSON downloadJSON = new DownloadJSON(duongdan,attrs);
        //end phương thức post
        downloadJSON.execute();

        try {
            dataJSON = downloadJSON.get();

            JSONObject jsonObject = new JSONObject(dataJSON);
            JSONArray jsonArrayDanhSachThuongHieu = jsonObject.getJSONArray("DANHSACHTHUONGHIEU");
            int dem = jsonArrayDanhSachThuongHieu.length();

            for (int i = 0; i<dem; i++){
                ThuongHieu thuongHieu = new ThuongHieu();
                JSONObject object = jsonArrayDanhSachThuongHieu.getJSONObject(i);

                thuongHieu.setMATHUONGHIEU(object.getInt("MATHUONGHIEU"));
                thuongHieu.setTENTHUONGHIEU(object.getString("TENTHUONGHIEU"));
                thuongHieu.setHINHTHUONGHIEU(object.getString("HINHTHUONGHIEU"));

                thuongHieuList.add(thuongHieu);
            }

        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return thuongHieuList;
    }
}



