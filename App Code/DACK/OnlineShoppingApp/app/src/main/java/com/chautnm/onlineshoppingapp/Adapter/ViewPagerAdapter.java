package com.chautnm.onlineshoppingapp.Adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import com.chautnm.onlineshoppingapp.View.TrangChu.Fragment.FragmentDienTu;
import com.chautnm.onlineshoppingapp.View.TrangChu.Fragment.FragmentNew;
import com.chautnm.onlineshoppingapp.View.TrangChu.Fragment.FragmentThoiTrangNam;
import com.chautnm.onlineshoppingapp.View.TrangChu.Fragment.FragmentThoiTrangNu;
import com.chautnm.onlineshoppingapp.View.TrangChu.Fragment.FragmentThuongHieu;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by TOSHIBA on 5/4/2018.
 */

public class ViewPagerAdapter extends FragmentPagerAdapter {
    List<Fragment> listFragment = new ArrayList<Fragment>();
    List<String> titleFragment = new ArrayList<String>();

    public ViewPagerAdapter(FragmentManager fm) {
        super(fm);
        listFragment.add(new FragmentNew());
        listFragment.add(new FragmentDienTu());
        listFragment.add(new FragmentThuongHieu());
        listFragment.add(new FragmentThoiTrangNam());
        listFragment.add(new FragmentThoiTrangNu());

        titleFragment.add("New");
        titleFragment.add("Điện tử");
        titleFragment.add("Thương hiệu");
        titleFragment.add("Thời trang nam");
        titleFragment.add("Thời trang nữ");

    }

    @Override
    public Fragment getItem(int position) {
        return listFragment.get(position);
    }

    @Override
    public int getCount() {
        return listFragment.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return titleFragment.get(position);
    }
}
