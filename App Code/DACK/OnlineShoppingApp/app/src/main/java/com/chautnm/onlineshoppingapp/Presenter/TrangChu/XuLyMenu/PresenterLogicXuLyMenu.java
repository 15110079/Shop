package com.chautnm.onlineshoppingapp.Presenter.TrangChu.XuLyMenu;

import com.chautnm.onlineshoppingapp.ConnectInternet.DownloadJSON;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;
import com.chautnm.onlineshoppingapp.Model.TrangChu.XuLyMenu.XuLyJSONMenu;
import com.chautnm.onlineshoppingapp.View.TrangChu.TrangChuActivity;
import com.chautnm.onlineshoppingapp.View.TrangChu.ViewXuLyMenu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;

/**
 * Created by minhh on 5/9/2018.
 */

public class PresenterLogicXuLyMenu implements IPresenterXulyMenu {

    ViewXuLyMenu viewXuLyMenu;
    public PresenterLogicXuLyMenu(ViewXuLyMenu viewXuLyMenu) {

        this.viewXuLyMenu= viewXuLyMenu;
    }

    @Override
    public void LayDanhSachMenu() {
        List<LoaiSanPham> loaiSanPhamList;
        String dataJSON="";
        List<HashMap<String,String>> attrs = new ArrayList<>();
        //method get
//       String duongdan="http://192.168.10.104/weblazada/loaisanpham.php?maloaicha=0";
//       DownloadJSON downloadJSON=new DownloadJSON(duongdan);
        //end method get

        //method post
        //String duongdan="http://10.188.0.208/weblazada/loaisanpham.php";
        String duongdan = TrangChuActivity.SERVER_NAME ;

        HashMap<String,String> hsHam = new HashMap<>();
        hsHam.put("ham","LayDanhSachMenu");

        HashMap<String,String> hsMaLoaiCha =new HashMap<>();
        hsMaLoaiCha.put("maloaicha","0");

        attrs.add(hsHam);
        attrs.add(hsMaLoaiCha);


        DownloadJSON downloadJSON = new DownloadJSON(duongdan,attrs);
        //end method post

        downloadJSON.execute();
        try{
            dataJSON=downloadJSON.get();
            XuLyJSONMenu xuLyJSONMenu=new XuLyJSONMenu();
            loaiSanPhamList=xuLyJSONMenu.ParserJSONMenu(dataJSON);
            viewXuLyMenu.HienThiDanhSachMenu(loaiSanPhamList);

        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
    }
}
