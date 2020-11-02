package com.mrz.stuff;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.lody.virtual.client.core.VirtualCore;
import com.lody.virtual.client.ipc.VActivityManager;
import com.mrz.R;
import com.mrz.activity.Loader;
import com.mrz.activity.MRZActivity;
import com.mrz.activity.MRZPlugins;

import java.io.File;
import java.util.ArrayList;

@SuppressWarnings("ALL")
public class ServicesAdapter extends RecyclerView.Adapter<ServicesAdapter.viewHolder> {

    Context context;
    ArrayList<itemModel> arrayList;

    public ServicesAdapter(Context context, ArrayList<itemModel> arrayList) {
        this.context = context;
        this.arrayList = arrayList;
    }

    @Override
    public  ServicesAdapter.viewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(context).inflate(R.layout.service_list, viewGroup, false);
        return new viewHolder(view);
    }

    @Override
    public  void onBindViewHolder(ServicesAdapter.viewHolder holder, final int position) {
        holder.service.setText(arrayList.get(position).getService());
        holder.autor.setText(arrayList.get(position).getAUTOR());
        holder.delete.setOnClickListener(v -> {
            File mrz = new File(context.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + arrayList.get(position).getService() + File.separator);
            if (mrz.isDirectory()) {
                String[] children = mrz.list();
                for (int i = 0; i < children.length; i++) {
                    new File(mrz, children[i]).delete();
                }
            }
            uninstallApp(arrayList.get(position).getPKG());
            new File(context.getCacheDir().getAbsolutePath() + "/GAMES/" + arrayList.get(position).getService()).delete();
            MRZActivity.ReloadList(context);
        });
        holder.start.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                launchApp(arrayList.get(position).getPKG());
                Snackbar.make(v, "Starting "+ arrayList.get(position).getService(), BaseTransientBottomBar.LENGTH_LONG).show();
            }
        });
        byte[] arrayOfByte = Base64.decode(arrayList.get(position).getImage(), 0);
        Bitmap bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
        holder.img.setImageBitmap(bitmap);
    }

    public void uninstallApp(String paramString) { VirtualCore.get().uninstallPackage(paramString); }

    public void launchApp(String paramString) {
        try {
            VActivityManager.get().startActivity(VirtualCore.get().getLaunchIntent(paramString, 0), 0);
            Intent intent = new Intent(context, Loader.class);
            context.startService(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getItemCount() {
        return arrayList.size();
    }

    public class viewHolder extends RecyclerView.ViewHolder {
        TextView service, autor;
        Button start,delete;
        ImageView img;

        public viewHolder(View itemView) {
            super(itemView);
            autor = (TextView) itemView.findViewById(R.id.autor);
            service = (TextView) itemView.findViewById(R.id.service);
            start = (Button) itemView.findViewById(R.id.start);
            delete = (Button) itemView.findViewById(R.id.delete);
            img = (ImageView) itemView.findViewById(R.id.profile);
        }
    }
}
