package com.chautnm.onlineshoppingapp.View.TrangChu.Fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.chautnm.onlineshoppingapp.Adapter.AdapterDienTu;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.DienTu;
import com.chautnm.onlineshoppingapp.Model.ObjectClass.ThuongHieu;
import com.chautnm.onlineshoppingapp.Presenter.TrangChu_DienTu.PresenterLogicDienTu;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.TrangChu.ViewDienTu;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class FragmentDienTu extends Fragment implements ViewDienTu{

    RecyclerView recyclerView;
    List<DienTu> dienTuList;
    PresenterLogicDienTu presenterLogicDienTu;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_dientu,container,false);

        recyclerView = (RecyclerView) view.findViewById(R.id.recyclerDienTu);
        //
        presenterLogicDienTu = new PresenterLogicDienTu(this);

        //khỏi tạo ở phương thức khởi tạo
        dienTuList= new ArrayList<>();

        presenterLogicDienTu.LayDanhSachDienTu();
        return view;
    }

    @Override
    public void HienThiDanhSach(List<ThuongHieu> thuongHieus) {
        DienTu dienTu= new DienTu();
        dienTu.setThuongHieus(thuongHieus);
        dienTuList.add(dienTu);

        AdapterDienTu adapterDienTu = new AdapterDienTu(getContext(),dienTuList);

        RecyclerView.LayoutManager layoutManager = new LinearLayoutManager(getContext());
        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setAdapter(adapterDienTu);
        adapterDienTu.notifyDataSetChanged();
    }
}
