package com.chautnm.onlineshoppingapp.View.DangNhap.Fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.chautnm.onlineshoppingapp.R;

/**
 * Created by TOSHIBA on 5/20/2018.
 */

public class FragmentDangKy  extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_fragment_dangky,container,false);
        return view;
    }
}
