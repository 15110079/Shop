package com.chautnm.onlineshoppingapp.Model.TrangChu.XuLyMenu;

import com.chautnm.onlineshoppingapp.ConnectInternet.DownloadJSON;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;

/**
 * Created by minhh on 5/9/2018.
 */

public class XuLyJSONMenu {
    public List<LoaiSanPham> ParserJSONMenu(String dulieuJSON){
        List<LoaiSanPham> loaiSanPhamList =new ArrayList<>();
        try{
            //Tao doi tuong Json tu dulieuJSON
            JSONObject jsonObject=new JSONObject(dulieuJSON);
            JSONArray Listloaisanpham=jsonObject.getJSONArray("LOAISANPHAM"); //Lay mang LoaiSP cua file json ten LOAISANPHAM
            int count= Listloaisanpham.length();
            for(int i=0;i<count;i++)   // Lay tung Loai san pham trong Listloaisanpham
            {
                JSONObject value=Listloaisanpham.getJSONObject(i);
                LoaiSanPham dataloaiSanpham =new LoaiSanPham();
                dataloaiSanpham.setMALOAISP(Integer.parseInt(value.getString("MALOAISP")));
                dataloaiSanpham.setMALOAICHA(Integer.parseInt(value.getString("MALOAI_CHA")));
                dataloaiSanpham.setTENLOAISP(value.getString("TENLOAISP"));

                loaiSanPhamList.add(dataloaiSanpham);
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        return loaiSanPhamList;

    }

    public List<LoaiSanPham> LayLoaiSPTheoMaLoai(int maloaisp){
        List<LoaiSanPham> loaiSanPhams=new ArrayList<>();
        HashMap<String,String> hsMaLoaiCha =new HashMap<>();
        List<HashMap<String,String>> attrs = new ArrayList<>();
        String dataJSON="";
        //method post
        String duongdan="http://192.168.10.104/weblazada/loaisanpham.php";
        hsMaLoaiCha.put("maloaicha",String.valueOf(maloaisp));
        attrs.add(hsMaLoaiCha);
        DownloadJSON downloadJSON = new DownloadJSON(duongdan,attrs);
        downloadJSON.execute();
        try{
            dataJSON=downloadJSON.get();
            XuLyJSONMenu xuLyJSONMenu=new XuLyJSONMenu();
            loaiSanPhams=xuLyJSONMenu.ParserJSONMenu(dataJSON);


        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
        return loaiSanPhams;
    }
}
