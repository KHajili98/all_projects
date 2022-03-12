package com.example.logindemo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    public void Login(View view){
        EditText nameEditText = (EditText) findViewById(R.id.nameEditText);
        EditText passwordEditText = (EditText) findViewById(R.id.passwordEditText);
        Log.i("info", "Button pressed");
        Log.i("Username", nameEditText.getText().toString());
        Log.i("Password", passwordEditText.getText().toString());
        Toast.makeText(this, "Hi User", Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
