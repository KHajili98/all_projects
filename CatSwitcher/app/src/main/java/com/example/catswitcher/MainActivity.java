package com.example.catswitcher;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    public void Switcher (View view){
        Log.i("info ", "Button pressed" );
        ImageView image = (ImageView) findViewById(R.id.cat2);
        image.setImageResource(R.drawable.cat1);
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
