package com.chautnm.onlineshoppingapp.Model.TrangChu.XuLyMenu;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.LoaiSanPham;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

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
}
