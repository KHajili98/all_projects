package com.example.animation;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    boolean bartIsShowing =true;

    public void trade (View view){
        ImageView bartImageView = (ImageView)  findViewById(R.id.bart);
        ImageView homerImageView = (ImageView)  findViewById(R.id.homer);

        bartImageView.animate().alpha(0).setDuration(2000);
        homerImageView.animate().alpha(1).setDuration(2000);
     if(bartIsShowing){
         bartIsShowing =false;
         bartImageView.animate().alpha(0).setDuration(2000);
         homerImageView.animate().alpha(1).setDuration(2000);
     }else {
         bartIsShowing =true;
         bartImageView.animate().alpha(1).setDuration(2000);
         homerImageView.animate().alpha(0).setDuration(2000);
     }


    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
