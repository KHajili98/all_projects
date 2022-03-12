package com.example.timestables;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.SeekBar;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    ListView timeTablesListView;


    public void generateTimesTable(int timesTableNumber){

        ArrayList <String> timesTableContent = new ArrayList<String>();

        for (int j=1 ; j<=15; j++){

            timesTableContent.add(Integer.toString( j*timesTableNumber));
        }
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1,timesTableContent);
        timeTablesListView.setAdapter(arrayAdapter);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final SeekBar timeTablesSeekBar = findViewById(R.id.timeTablesSeekBar);
        timeTablesListView = findViewById(R.id.timeTablesListView);
        int max= 20;
        int startingPosition = 10;

        timeTablesSeekBar.setMax(max);
        timeTablesSeekBar.setProgress(startingPosition);
        generateTimesTable(startingPosition);

        timeTablesSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                int min  = 1;
                int timesTableNumber;

                if (progress<min){
                    timesTableNumber = min;
                    timeTablesSeekBar.setProgress(min);

                }else{
                    timesTableNumber = progress;
                }

                Log.i("Seekbar Value: ", Integer.toString(timesTableNumber));
                generateTimesTable(timesTableNumber);
            }
            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }
            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
    }
}
