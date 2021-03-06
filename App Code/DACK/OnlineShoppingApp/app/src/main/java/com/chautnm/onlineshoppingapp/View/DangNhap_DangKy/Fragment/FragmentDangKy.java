package com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.Fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v7.widget.SwitchCompat;
import android.util.Log;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Toast;

import com.chautnm.onlineshoppingapp.Model.ObjectClass.NhanVien;
import com.chautnm.onlineshoppingapp.Presenter.DangKy.PresenterLogicDangKy;
import com.chautnm.onlineshoppingapp.R;
import com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.ViewDangKy;

/**
 * Created by TOSHIBA on 5/20/2018.
 */

public class FragmentDangKy  extends Fragment implements ViewDangKy,View.OnClickListener,View.OnFocusChangeListener{
    PresenterLogicDangKy presenterLogicDangKy;
    Button btnDangKy;
    EditText edHoTen,edMatKhau,edNhapLaiMatKhau,edDiaChiEmail;
    SwitchCompat sEmailDocQuyen;
    //De ktra nguoi dung co nhap gia tri hay ko
    TextInputLayout input_edHoTen;
    TextInputLayout input_edMatKhau;
    TextInputLayout input_edNhapLaiMatKhau;
    TextInputLayout input_edDiaChiEmail;
    Boolean kiemtrathongtin = false;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_fragment_dangky,container,false);

        btnDangKy = view.findViewById(R.id.btnDangKy);
        edHoTen = view.findViewById(R.id.edHoTenDK);
        edMatKhau = view.findViewById(R.id.edMatKhauDK);
        edNhapLaiMatKhau = view.findViewById(R.id.edNhapLaiMatKhauDK);
        edDiaChiEmail = view.findViewById(R.id.edDiaChiEmailDK);
        sEmailDocQuyen = view.findViewById(R.id.sEmailDocQuyen);
        input_edHoTen = view.findViewById(R.id.input_edHoTenDK);
        input_edMatKhau = view.findViewById(R.id.input_edMatKhauDK);
        input_edNhapLaiMatKhau = view.findViewById(R.id.input_edNhapLaiMatKhauDK);
        input_edDiaChiEmail = view.findViewById(R.id.input_edDiaChiEmailDK);

        presenterLogicDangKy = new PresenterLogicDangKy(this);

        btnDangKy.setOnClickListener(this);
        edHoTen.setOnFocusChangeListener(this);
        edNhapLaiMatKhau.setOnFocusChangeListener(this);
        edDiaChiEmail.setOnFocusChangeListener(this);

        return view;
    }

    @Override
    public void DangKyThangCong() {
        Toast.makeText(getActivity(),"Đăng ký thành công !", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void DangKyThatBai() {
        Toast.makeText(getActivity(),"Đăng ký thất bại !",Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        switch (id){

            case R.id.btnDangKy:
                btnDangKy();
                ;break;
        }
    }

    String emaildocquyen = "";
    private void btnDangKy(){
        String hoten = edHoTen.getText().toString();
        String email = edDiaChiEmail.getText().toString();
        String matkhau = edMatKhau.getText().toString();
        String nhaplaimatkhau = edNhapLaiMatKhau.getText().toString();

        sEmailDocQuyen.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                emaildocquyen = b + "";
            }
        });

        if(kiemtrathongtin) {
            NhanVien nhanVien = new NhanVien();
            nhanVien.setTenNV(hoten);
            nhanVien.setTenDN(email);
            nhanVien.setMatKhau(matkhau);
            nhanVien.setEmailDocQuyen(emaildocquyen);
            nhanVien.setMaLoaiNV(2);

            presenterLogicDangKy.ThucHienDangKy(nhanVien);
        }else{
            Log.d("kiemtra","Dang ky that bai ");
        }
    }

    @Override
    public void onFocusChange(View view, boolean hasFocus) {
        int id = view.getId();
        switch (id){
            case R.id.edHoTenDK:
                if(!hasFocus){
                    String chuoi = ((EditText)view).getText().toString();
                    if(chuoi.trim().equals("") || chuoi.equals(null)){
                        input_edHoTen.setErrorEnabled(true);
                        input_edHoTen.setError("Bạn chưa nhập mục này !");
                        kiemtrathongtin = false;
                    }else{
                        input_edHoTen.setErrorEnabled(false);
                        input_edHoTen.setError("");
                        kiemtrathongtin = true;
                    }
                }
                ;break;

            case R.id.edDiaChiEmailDK:
                if(!hasFocus){

                    String chuoi = ((EditText)view).getText().toString();

                    if(chuoi.trim().equals("") || chuoi.equals(null)){
                        input_edDiaChiEmail.setErrorEnabled(true);
                        input_edDiaChiEmail.setError("Bạn chưa nhập mục này !");
                        kiemtrathongtin = false;
                    }else{

                        Boolean kiemtraemail = Patterns.EMAIL_ADDRESS.matcher(chuoi).matches();
                        if(!kiemtraemail){
                            input_edDiaChiEmail.setErrorEnabled(true);
                            input_edDiaChiEmail.setError("Email không hợp lệ!");
                            kiemtrathongtin = false;
                        }else{
                            input_edDiaChiEmail.setErrorEnabled(false);
                            input_edDiaChiEmail.setError("");
                            kiemtrathongtin = true;
                        }
                    }
                }
                ;break;

            case R.id.edMatKhauDK:
                ;break;

            case R.id.edNhapLaiMatKhauDK:
                if(!hasFocus){
                    String chuoi = ((EditText)view).getText().toString();
                    String matkhau = edMatKhau.getText().toString();
                    if(!chuoi.equals(matkhau)){
                        input_edNhapLaiMatKhau.setErrorEnabled(true);
                        input_edNhapLaiMatKhau.setError("Mật khẩu không trùng khớp !");
                        kiemtrathongtin = false;
                    }else{
                        input_edNhapLaiMatKhau.setErrorEnabled(false);
                        input_edNhapLaiMatKhau.setError("");
                        kiemtrathongtin = true;
                    }
                }

                ;break;

        }
    }
}
