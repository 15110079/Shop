package com.chautnm.onlineshoppingapp.Adapter;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.HienThiSanPhamTheoDanhMuc.HienThiSanPhamTheoDanhMucActivity;
import com.chautnm.onlineshoppingapp.View.TrangChu.TrangChuActivity;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;

import java.util.List;

/**
 * Created by TOSHIBA on 5/18/2018.
 */

public class AdapterThuongHieuLon extends RecyclerView.Adapter<AdapterThuongHieuLon.ViewHolderThuongHieu> {
    Context context;
    List<ThuongHieu> thuongHieus;
    boolean kiemtra;
    public AdapterThuongHieuLon(Context context, List<ThuongHieu> thuongHieus, boolean kiemtra){
        this.context = context;
        this.thuongHieus = thuongHieus;
        this.kiemtra= kiemtra;
    }


    public class ViewHolderThuongHieu extends RecyclerView.ViewHolder {
        TextView txtTieuDeThuongHieu;
        ImageView imHinhThuongHieu;
        ProgressBar progressBar;
        LinearLayout linearLayout;
        public ViewHolderThuongHieu(View itemView) {
            super(itemView);

            txtTieuDeThuongHieu = itemView.findViewById(R.id.txtTieuDeThuongHieuLonDienTu);
            imHinhThuongHieu = itemView.findViewById(R.id.imHinhThuongHieuLonDienTu);
            progressBar = itemView.findViewById(R.id.progress_bar_download);
            linearLayout = itemView.findViewById(R.id.lnthuonghieulon);
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
    public void onBindViewHolder(final AdapterThuongHieuLon.ViewHolderThuongHieu holder, int position) {
        final ThuongHieu thuongHieu = thuongHieus.get(position);
        holder.txtTieuDeThuongHieu.setText(thuongHieu.getTENTHUONGHIEU());

        holder.linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                        Intent iHienThiSanPhamTheoDanhMuc =new Intent(context,HienThiSanPhamTheoDanhMucActivity.class);
                        iHienThiSanPhamTheoDanhMuc.putExtra("MALOAI",thuongHieu.getMATHUONGHIEU());
                        iHienThiSanPhamTheoDanhMuc.putExtra("TENLOAI",thuongHieu.getTENTHUONGHIEU());
                        iHienThiSanPhamTheoDanhMuc.putExtra("KIEMTRA",kiemtra);
                        context.startActivity(iHienThiSanPhamTheoDanhMuc);
                        //Log.d("click",thuongHieu.getMATHUONGHIEU()+"-"+thuongHieu.getTENTHUONGHIEU());
            }
        });
        Picasso.get().load(thuongHieu.getHINHTHUONGHIEU()).
                resize(120,120).
                into(holder.imHinhThuongHieu, new Callback() {
                    @Override
                    public void onSuccess() {
                        holder.progressBar.setVisibility(View.GONE);
                    }

                    @Override
                    public void onError(Exception e) {

                    }
                });

    }

    @Override
    public int getItemCount() {
        return thuongHieus.size();
    }


}
