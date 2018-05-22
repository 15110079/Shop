package com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.chautnm.onlineshoppingapp.Model.DangNhap_DangKy.ModelDangNhap;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.TrangChu.TrangChuActivity;

/**
 * Created by TOSHIBA on 5/20/2018.
 */

public class FragmentDangNhap extends Fragment implements View.OnClickListener{

    Button btnDangNhap;
    ModelDangNhap modelDangNhap;
    EditText edTenDangNhap,edMatKhau;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_fragment_dangnhap,container,false);

        modelDangNhap = new ModelDangNhap();
        btnDangNhap = view.findViewById(R.id.btnDangNhap);
        edTenDangNhap = view.findViewById(R.id.edDiaChiEmailDangNhap);
        edMatKhau = view.findViewById(R.id.edMatKhauDangNhap);

        btnDangNhap.setOnClickListener(this);

        return view;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        switch (id) {
            case R.id.btnDangNhap:
                String tendangnhap = edTenDangNhap.getText().toString();
                String matkhau = edMatKhau.getText().toString();
                boolean kiemtra = modelDangNhap.KiemTraDangNhap(getActivity(), tendangnhap, matkhau);
                if (kiemtra) {
                    Intent iTrangChu = new Intent(getActivity(), TrangChuActivity.class);
                    startActivity(iTrangChu);
                } else {
                    Toast.makeText(getActivity(), "Tên đăng nhập và mật khẩu không đúng !", Toast.LENGTH_SHORT).show();
                }
                ;break;
        }
    }
}
