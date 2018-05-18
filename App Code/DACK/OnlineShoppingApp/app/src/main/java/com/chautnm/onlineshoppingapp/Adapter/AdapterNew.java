package com.chautnm.onlineshoppingapp.Adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.chautnm.onlineshoppingapp.R;

import java.util.List;

/**
 * Created by TOSHIBA on 5/16/2018.
 */

public class AdapterNew extends RecyclerView.Adapter<AdapterNew.ViewHoler> {
    Context context;
    List<String> stringList;

    public AdapterNew (Context context,List<String> stringList){
        this.context = context;
        this.stringList = stringList;
    }

    //#2: find view
    public class ViewHoler extends RecyclerView.ViewHolder {

        TextView textView;
        public ViewHoler(View itemView) {
            super(itemView);
            textView= itemView.findViewById(R.id.txtTieuDeNew);

        }
    }
    //#1 khởi tạo giao diện view cho từng item
    @Override
    public ViewHoler onCreateViewHolder(ViewGroup parent, int viewType) {
        //khởi tạo
        LayoutInflater layoutInflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
        View view=layoutInflater.inflate(R.layout.custom_recycleview_new,parent,false);
        //
        ViewHoler viewHoler=new ViewHoler(view);

        return viewHoler;
    }
    //#3 thay thế nội dung ở chế độ xem
    @Override
    public void onBindViewHolder(ViewHoler holder, int position) {
    holder.textView.setText(stringList.get(position));
    }
    //trả về kích thước của tập dữ liệu
    @Override
    public int getItemCount() {
        return stringList.size();
    }


}
