package com.chautnm.onlineshoppingapp.Adapter;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.DienTu;
import com.chautnm.onlineshoppingapp.R;

import java.util.List;

/**
 * Created by TOSHIBA on 5/19/2018.
 */

public class AdapterDienTu extends RecyclerView.Adapter<AdapterDienTu.ViewHolderDienTu> {

    Context context;
    List<DienTu> dienTuList;

    public  AdapterDienTu(Context context, List<DienTu> dienTuList){
        this.context = context;
        this.dienTuList = dienTuList;
    }


    public  class  ViewHolderDienTu extends RecyclerView.ViewHolder{

        TextView txtTieuDeSanPhamNoiBat,txtTopSanPhamNoiBat;
        RecyclerView recyclerViewTHuongHieuLon,recyclerViewTopSanPham;

        public ViewHolderDienTu(View itemView) {
            super(itemView);

            txtTieuDeSanPhamNoiBat=itemView.findViewById(R.id.txtThuongHieuLon);
            txtTopSanPhamNoiBat=itemView.findViewById(R.id.txtTop);
            recyclerViewTHuongHieuLon= itemView.findViewById(R.id.recyclerThuongHieuLon);
            recyclerViewTopSanPham=itemView.findViewById(R.id.recyclerTop);
        }
    }
    @Override
    public AdapterDienTu.ViewHolderDienTu onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = layoutInflater.inflate(R.layout.custom_layout_recyclerview_dientu,parent,false);

        ViewHolderDienTu viewHolderDienTu = new ViewHolderDienTu(view);

        return viewHolderDienTu;
    }

    @Override
    public void onBindViewHolder(AdapterDienTu.ViewHolderDienTu holder, int position) {
        DienTu dienTu = dienTuList.get(position);
        AdapterThuongHieuLon adapterThuongHieuLon = new AdapterThuongHieuLon(context,dienTu.getThuongHieus());

        RecyclerView.LayoutManager layoutManager = new GridLayoutManager(context,3, GridLayoutManager.HORIZONTAL,false);

        holder.recyclerViewTHuongHieuLon.setLayoutManager(layoutManager);
        holder.recyclerViewTHuongHieuLon.setAdapter(adapterThuongHieuLon);
        adapterThuongHieuLon.notifyDataSetChanged();
    }

    @Override
    public int getItemCount() {
        return dienTuList.size();
    }
}
