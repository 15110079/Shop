package com.chautnm.onlineshoppingapp.View.TrangChu.Fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.chautnm.onlineshoppingapp.Adapter.AdapterNew;
import com.chautnm.onlineshoppingapp.R;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class FragmentNew extends Fragment {
    RecyclerView recyclerView;
    AdapterNew adapterNew;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_new,container,false);
        //tìm bên giao diện
        recyclerView=view.findViewById(R.id.recycleNew);
        //tạo dữ liệu
        List<String> dulieu=new ArrayList<>();
        for (int i=0;i<20;i++){
            String ten ="new "+i;
            dulieu.add(ten);
        }
        //Khoi tạo giao diên
        //RecyclerView.LayoutManager layoutManager=new LinearLayoutManager(getActivity(),LinearLayoutManager.HORIZONTAL,false);
        RecyclerView.LayoutManager layoutManager= new GridLayoutManager(getActivity(),2);
        //Khởi tao adapter
        adapterNew=new AdapterNew(getActivity(),dulieu);

        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setAdapter(adapterNew);
        adapterNew.notifyDataSetChanged();


        return view;
    }
    //để sử dụng recyclerview trong layout cần
    ///recyclerview luôn đi kèm với viewHolder
    ////1/ recyclerview bản chất là 1 listview or gridview :cũng có adapter
    ////=> để có dự liệu cho recyclerview cần khai báo 1 adapter , kế thừa recyclerview.adapter<viewHolder>
    ///// phải có 1 phương thức khởi tạo nhận vào : context, list(dữ liệu )
    /////Thứ tự chay 1 :oncreateViewHolder => khởi tạo giao diện của viewHolder
    //////////////////ViewHolder cho phép bạn truy cập các thành phần của danh sách.
    //////////////////Đặc biệt, nó giúp bạn tránh việc phải thực hiện findViewById()
    //////////////////và làm cho ứng dụng mượt hơn.
    /////Thứ tự chay 2: trong quá trình thực hiện : gọi phương thức khởi tạo viewHolder
    /////trả về viewHolder (trả cho onBindViewHolder)
    /////Thứ tự chay 3 onBindViewHolder : set dữ liệu
    ////2/ Gán dữ liệu cho recyclerView
    /////layoutManager



}
