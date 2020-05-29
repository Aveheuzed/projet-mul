import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';
import 'package:fl_chart/fl_chart.dart';

class Resultat extends StatelessWidget {
  final int score;

  Resultat({this.score}):super();
  @override
  Widget build(BuildContext context) {
    String apprec;
    if( score == 10) apprec = "Parfait !";
    else if(score > 8) apprec = "Très bien !";
    else if(score > 5) apprec = "Pas mal !";
    else if(score > 3) apprec = "N'hésite pas à demander de l'aide";
    else apprec = "Tu feras mieux la prochaine fois!";

    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height-100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Résultats",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF323347),
                        fontSize: 40,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                      height: 500,
                      child: Row(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1,
                            child: PieChart(
                                PieChartData(
                                    borderData: FlBorderData(show: false),
                                    centerSpaceRadius: 0,
                                    sectionsSpace: 0,
                                    sections: <PieChartSectionData>[
                                      PieChartSectionData(
                                        color: Color(0xFF0CCC06),
                                        title: score.toString()+"/10",
                                        value: score.toDouble(),
                                        radius: 200,
                                        titleStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w800
                                        ),
                                      ),
                                      PieChartSectionData(
                                        color: Color(0xFFFF0000),
                                        title: (10-score).toString()+"/10",
                                        value: 10.0-score,
                                        radius: 200,
                                        titleStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w800
                                        ),
                                      ),
                                    ]
                                )
                            ) ,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Indicator(
                                color: Color(0xFFFF0000),
                                text: "Incorrect",
                                isSquare: false,
                              ),
                              Indicator(
                                color: Color(0xFF0CCC06),
                                text: "correct",
                                isSquare: false,
                              ),

                            ],
                          ),
                        ],
                      )
                  ),
                  Text(
                    apprec,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF323347),
                        fontSize: 40,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 60,),
                  Bouton("Suivant", onPressed: (){
                    Navigator.of(context).pushNamed('/ExercicesLibres');
                  })
                ],
              ),
            ),
          )
      ),
    );
  }
}


class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.isSquare,
    this.size = 40,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF323347),
              fontSize: 40,
              fontWeight: FontWeight.w800
          ),
        )
      ],
    );
  }
}