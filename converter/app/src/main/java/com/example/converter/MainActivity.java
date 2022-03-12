package com.example.converter;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {

    public void ConvertCurrency (View view){
        Log.i("info", "Ready for use");
        EditText editText = (EditText) findViewById(R.id.editText);
        String amountInDollar = editText.getText().toString();
        double amountInDollarDouble = Double.parseDouble(amountInDollar);
        double amountInAZNDouble= amountInDollarDouble * 1.7;
        String amountInAZNString = String.format("%.2f", amountInAZNDouble);
        Toast.makeText(this, '$'+amountInDollar + " is ₼"+ amountInAZNString, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
