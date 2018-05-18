package com.chautnm.onlineshoppingapp.Adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;
import com.chautnm.onlineshoppingapp.R;
import com.squareup.picasso.Picasso;

import java.util.List;

/**
 * Created by TOSHIBA on 5/18/2018.
 */

public class AdapterThuongHieuLon extends RecyclerView.Adapter<AdapterThuongHieuLon.ViewHolderThuongHieu> {
    Context context;
    List<ThuongHieu> thuongHieus;

    public AdapterThuongHieuLon(Context context, List<ThuongHieu> thuongHieus,boolean kiemtra){
        this.context = context;
        this.thuongHieus = thuongHieus;
    }


    public class ViewHolderThuongHieu extends RecyclerView.ViewHolder {
        TextView txtTieuDeThuongHieu;
        ImageView imHinhThuongHieu;
        public ViewHolderThuongHieu(View itemView) {
            super(itemView);

            txtTieuDeThuongHieu = itemView.findViewById(R.id.txtTieuDeThuongHieuLonDienTu);
            imHinhThuongHieu = itemView.findViewById(R.id.imHinhThuongHieuLonDienTu);
        }
    }
    @Override
    public AdapterThuongHieuLon.ViewHolderThuongHieu onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = inflater.inflate(R.layout.custom_layout_recycler_thuonghieulon,parent,false);

        ViewHolderThuongHieu viewHolder = new ViewHolderThuongHieu(view);
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(AdapterThuongHieuLon.ViewHolderThuongHieu holder, int position) {
        ThuongHieu thuongHieu = thuongHieus.get(position);
        holder.txtTieuDeThuongHieu.setText(thuongHieu.getTENTHUONGHIEU());
        Picasso.get().load(thuongHieu.getHINHTHUONGHIEU()).into(holder.imHinhThuongHieu);

    }

    @Override
    public int getItemCount() {
        return thuongHieus.size();
    }


}
