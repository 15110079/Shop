package com.chautnm.onlineshoppingapp.View.TrangChu.Fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.chautnm.onlineshoppingapp.R;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class FragmentThoiTrangNam extends Fragment {
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.layout_thoitrangnam,container,false);
        return view;
    }
}
