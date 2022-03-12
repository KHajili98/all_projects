package com.example.sounddemo;

import androidx.appcompat.app.AppCompatActivity;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.InputFilter;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.MediaController;
import android.widget.SeekBar;

import java.nio.channels.SelectionKey;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        AudioManager = (AudioManager) getSystemService(AUDIO_SERVICE);
        int maxVolume= AudioManager.getStreamMaxVolume(android.media.AudioManager.STREAM_MUSIC);
        int currentVolume= AudioManager.getStreamMaxVolume(android.media.AudioManager.STREAM_MUSIC);


        mediaPlayer = MediaPlayer.create(this, R.raw.mahni);

        SeekBar volumeControl =(SeekBar) findViewById(R.id.seekBar);
        volumeControl.setMax(maxVolume);
        volumeControl.setProgress(currentVolume);

        volumeControl.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                Log.i("Seekbar changed:", Integer.toString(progress));
                AudioManager.setStreamVolume(AudioManager.STREAM_MUSIC, progress, 0);
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });




        final SeekBar scrubSeekbar = (SeekBar) findViewById(R.id.scrubSeekbar);
        scrubSeekbar.setMax(mediaPlayer.getDuration());
        scrubSeekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                Log.i("Scrubseekbar moved: ", Integer.toString(progress));
                mediaPlayer.seekTo(progress);
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
        new Timer().scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                scrubSeekbar.setProgress(mediaPlayer.getCurrentPosition());
            }
        }, 0, 1000);
    }
    AudioManager AudioManager;





    MediaPlayer mediaPlayer;
    public void Play(View view){
        Button buttonPlay = findViewById(R.id.Play);
        mediaPlayer = MediaPlayer.create(this, R.raw.mahni);
        mediaPlayer.start();
    }
    public void Pause (View view){
        if (mediaPlayer.isPlaying()){
            mediaPlayer.pause();
        }

    }
    public void Continue (View view) {
            mediaPlayer.start();
        }
    }


