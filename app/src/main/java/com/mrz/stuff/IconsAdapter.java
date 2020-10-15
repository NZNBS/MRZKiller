package com.mrz.stuff;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.View;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.mrz.R;

import java.util.ArrayList;

public class IconsAdapter extends RecyclerView.Adapter<IconsAdapter.viewHolder> {

    Context context;
    ArrayList<itemModel> arrayList;

    public IconsAdapter(Context context, ArrayList<itemModel> arrayList) {
        this.context = context;
        this.arrayList = arrayList;
    }

    @Override
    public  IconsAdapter.viewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(context).inflate(R.layout.icon_list, viewGroup, false);
        return new viewHolder(view);
    }

    @Override
    public  void onBindViewHolder(IconsAdapter.viewHolder viewHolder,int position) {
        viewHolder.iconName.setText(arrayList.get(position).getName());
        byte[] decode = Base64.decode(arrayList.get(position).getImage(), 0);
        viewHolder.icon.setImageBitmap(BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    @Override
    public int getItemCount() {
        return arrayList.size();
    }

    public class viewHolder extends RecyclerView.ViewHolder {
        ImageView icon;
        TextView iconName;

        public viewHolder(View itemView) {
            super(itemView);
            icon = (ImageView) itemView.findViewById(R.id.icon);
            iconName = (TextView) itemView.findViewById(R.id.icon_name);
        }
    }
}