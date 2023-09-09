import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons.dart';
import 'card.dart';
import 'constants.dart';
import 'calculate.dart';
import 'result.dart';
enum Gender{
  male,female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    Gender? selectgender;
  // Color malecolor=inactivecardcolor;
  // Color femalecolor=inactivecardcolor;
  //
  // void updatecolor(Gender gender)
  // {
  //   malecolor=(gender==Gender.male)?inactivecardcolor:activecolor;
  //   femalecolor=(gender==Gender.female)?inactivecardcolor:activecolor;
  //
  //
  // }

int height=180,weight=60,age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Row(
                children: [
                      Expanded(

                        child: card(
                          onpress:(){
                            setState(() {
                              selectgender=Gender.male;
                            });
                          },
                            colourneed:(selectgender==Gender.male)?inactivecardcolor:activecolor,
                          cardChild: gen(t:'MALE',i: FontAwesomeIcons.mars,),


                        ),
                      ),
                  Expanded(
                    child: card(
                      onpress: (){
                        setState(() {
                          selectgender=Gender.female;
                        });

                      },

                      colourneed: (selectgender==Gender.female)?inactivecardcolor:activecolor,
                      cardChild: gen(t: 'FEMALE', i: FontAwesomeIcons.venus),

                    ),
                  ),

                ],
              ) ,
          ),//top  male and female buttons in output

          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: card(
                        colourneed: Color(0xFF1D1E33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HEIGHT',style: labelstyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(),style: knumberstyle),
                              Text('Cm',style: labelstyle,),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: Color(0xFFEB1555),
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                              activeTrackColor: Colors.white,
                              overlayColor: Color(0x29EB1555)
                            ),

                            child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                              //  activeColor: Colors.white,
                                inactiveColor: Color(0xFF8D8E98),
                                onChanged: (double newvalue){
                                  setState(() {
                                    height=newvalue.round();
                                  });
                                },

                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
          ),

          Expanded(
            child:Row(
              children: [
                Expanded(
                  child: card(colourneed: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: labelstyle,),
                        Text(weight.toString(),style: knumberstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                            }),
                            SizedBox(width: 10.0,),

                          RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                            setState(() {
                              weight++;
                            });

                          }),


                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: card(colourneed: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: labelstyle,),
                        Text(age.toString(),style: knumberstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(width: 10.0,),

                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });

                            }),


                          ],
                        )
                      ],
                    ),
                  
                  ),
                ),

              ],
            ) ,
          ),

          GestureDetector(
            onTap:(){
              calciii calci=calciii();

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>result(
                    bmiResult: calci.calculateBMI(height, weight),
                    interpretation: calci.getInterpretation(),
                    resultText: calci.getResult(),

                  )),
              );
            },
            child: Container(
              child: Center(child: Text('Calculate',style: kbuttonstyle,)),
              color: bottomcolor,

              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )


        ],

      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon,
      color: Colors.white,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
