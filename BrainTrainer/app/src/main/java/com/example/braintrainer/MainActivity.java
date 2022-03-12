package com.example.braintrainer;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;


public class MainActivity extends AppCompatActivity {
    Button goButton;
    Button button0;
    Button button1;
    Button button2;
    Button button3;
    Button playAgain;
    ArrayList <Integer> answers = new ArrayList<Integer> ();
    TextView resultTextView;
    TextView scoreTextView;
    TextView sumTextView;
    TextView timerTextView;
    int locationOfCorrectAnswers;
    int score = 0;
    int numberOfQuestions = 0 ;
    ConstraintLayout gameLayout;



    public void start (View view){
        goButton.setVisibility(View.INVISIBLE);
        gameLayout.setVisibility(View.VISIBLE);
        playAgain(findViewById(R.id.timerTextView));
    }



    public void playAgain (View view){
        score=0;
        numberOfQuestions=0;
        timerTextView.setText("30s");
        scoreTextView.setText(Integer.toString(score)+ "/"+ Integer.toString(numberOfQuestions));
        playAgain.setVisibility(View.INVISIBLE);
        resultTextView.setText("");

        newQuestion();

        new CountDownTimer(30100, 1000){

            @Override
            public void onTick(long millisUntilFinished) {
                timerTextView.setText(String.valueOf(millisUntilFinished/1000)+ "s");

            }

            @Override
            public void onFinish() {
                resultTextView.setText("Time is out!");
                playAgain.setVisibility(View.VISIBLE);


            }
        }.start();

    }



    public void chooseAnswer(View view){
      if (Integer.toString(locationOfCorrectAnswers).equals(view.getTag().toString())){
            resultTextView.setText("Correct !");
            score++;
      }else {
          resultTextView.setText("Wrong!");
      }
      numberOfQuestions++;
      scoreTextView.setText(Integer.toString(score)+ "/"+ Integer.toString(numberOfQuestions));
      newQuestion();
    }




    public void newQuestion (){
        Random rand = new Random();
        int a= rand.nextInt(21);
        int b= rand.nextInt(21);
        sumTextView.setText(Integer.toString(a) + " + " + Integer.toString(b));
        locationOfCorrectAnswers = rand.nextInt(4);

        answers.clear();

        for (int i=0; i<4; i++){
            if (i==locationOfCorrectAnswers){
                answers.add(a+b);
            }else {
                int wrongAnswers = rand.nextInt(41);
                while (wrongAnswers == a+b){
                    wrongAnswers = rand.nextInt(41);
                }
                answers.add(wrongAnswers);
            }
        }
        button0.setText(Integer.toString(answers.get(0)));
        button1.setText(Integer.toString(answers.get(1)));
        button2.setText(Integer.toString(answers.get(2)));
        button3.setText(Integer.toString(answers.get(3)));

    }






    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        sumTextView = findViewById(R.id.sumTextView);
        resultTextView = findViewById(R.id.resultTextView);
        scoreTextView = findViewById(R.id.scoreTextView);
        timerTextView = findViewById(R.id.timerTextView);

        button0 = findViewById(R.id.button0);
        button1 = findViewById(R.id.button1);
        button2 = findViewById(R.id.button2);
        button3 = findViewById(R.id.button3);
        goButton = findViewById(R.id.goButton);
        playAgain= findViewById(R.id.playAgain);
        gameLayout= findViewById(R.id.gameLayout);

        goButton.setVisibility(View.VISIBLE);
        gameLayout.setVisibility(View.INVISIBLE);


    }
}
