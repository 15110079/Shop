package com.chautnm.onlineshoppingapp.Adapter;

import android.content.Context;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.SanPham;
import com.chautnm.onlineshoppingapp.R;
import com.squareup.picasso.Picasso;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.List;

/**
 * Created by TOSHIBA on 5/19/2018.
 */

public class AdapterTopDienThoaiDienTu extends RecyclerView.Adapter<AdapterTopDienThoaiDienTu.ViewHolderTopDienThoai> {

    Context context;
    List<SanPham> sanPhamList;

    public AdapterTopDienThoaiDienTu(Context context, List<SanPham> sanPhamList){
        this.context = context;
        this.sanPhamList = sanPhamList;
    }
    public class ViewHolderTopDienThoai extends RecyclerView.ViewHolder {
        ImageView imHinhSanPham;
        TextView txtTenSP,txtGiaTien,txtGiamGia;
        CardView cardView;

        public ViewHolderTopDienThoai(View itemView) {
            super(itemView);

            imHinhSanPham = itemView.findViewById(R.id.imTopDienThoaiDienTu);
            txtTenSP =  itemView.findViewById(R.id.txtTieuDeTopDienThoaiDienTu);
            txtGiaTien =  itemView.findViewById(R.id.txtGiaDienTu);
            txtGiamGia =  itemView.findViewById(R.id.txtGiamGiaDienTu);
            cardView = itemView.findViewById(R.id.cardViewTop);
        }
    }

    @Override
    public ViewHolderTopDienThoai onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = layoutInflater.inflate(R.layout.custom_layout_recycler_topdienthoaivamaytinhbang,parent,false);

        ViewHolderTopDienThoai viewHolderTopDienThoai = new ViewHolderTopDienThoai(view);

        return viewHolderTopDienThoai;
    }

    @Override
    public void onBindViewHolder(ViewHolderTopDienThoai holder, int position) {
        SanPham sanPham = sanPhamList.get(position);
        Picasso.get().load(sanPham.getANHLON()).resize(140,140)
                .centerInside().into(holder.imHinhSanPham);
        holder.txtTenSP.setText(sanPham.getTENSP());

        NumberFormat numberFormat = new DecimalFormat("###,###");
        String gia = numberFormat.format(sanPham.getGIA()).toString();
        holder.txtGiaTien.setText(gia + "VND");
    }

    @Override
    public int getItemCount() {
        return sanPhamList.size();
    }


}
