package com.chautnm.onlineshoppingapp.Adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.Fragment.FragmentDangKy;
import com.chautnm.onlineshoppingapp.View.DangNhap_DangKy.Fragment.FragmentDangNhap;

/**
 * Created by TOSHIBA on 5/20/2018.
 */

public class ViewPagerAdaterDangNhap extends FragmentPagerAdapter {
    public ViewPagerAdaterDangNhap(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment getItem(int position) {
        //cách 2 (biết trước số fragment)
        switch (position){
            case 0 :
                FragmentDangNhap fragmentDangNhap = new FragmentDangNhap();
                return fragmentDangNhap;
            case 1 :
                FragmentDangKy fragmentDangKy = new FragmentDangKy();
                return fragmentDangKy;

            default: return null;
        }
    }

    @Override
    public int getCount() {
        //tra ve so fragment trong 1 trang
        return 2;
    }

    @Override
    public CharSequence getPageTitle(int position) {
        switch (position){
            case 0 :
                return "Đăng nhập";
            case 1 :
                return "Đăng ký";

            default: return null;
        }
    }
}
