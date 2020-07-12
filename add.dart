import 'package:flutter/material.dart';

class AddTripsScreens extends StatefulWidget {
  @override
  _AddTripsScreensState createState() => _AddTripsScreensState();
}

class _AddTripsScreensState extends State<AddTripsScreens> {

  final departureTextController=TextEditingController();
  final destinationTextController=TextEditingController();
  final departureDateTextController=TextEditingController();
  final departureTimeTextController=TextEditingController();
  final destinationDateTextController=TextEditingController();
  final destinationTimeTextController=TextEditingController();

  String dropdownValue = 'Vacation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        centerTitle: false,
        leading: IconButton(icon: Icon(Icons.chevron_left,color: Colors.black,size: 24,),onPressed: ()=>Navigator.pop(context),),
        title: Text('Create a trip',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontStyle: FontStyle.normal,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: departureTextController,
                cursorColor: Color(0xffA5A2A2),
                decoration: InputDecoration(
                  hintText: 'Enter Departure',
                  hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                  focusColor: Colors.grey,
                  hoverColor: Colors.grey,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: departureDateTextController,
                        cursorColor: Color(0xffA5A2A2),
                        decoration: InputDecoration(
                          hintText: 'Enter Date',
                          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                          focusColor: Colors.grey,
                          hoverColor: Colors.grey,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1,child: Container()),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: departureTimeTextController,
                        cursorColor: Color(0xffA5A2A2),
                        decoration: InputDecoration(
                          hintText: 'Enter Time',
                          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                          focusColor: Colors.grey,
                          hoverColor: Colors.grey,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: destinationTextController,
                cursorColor: Color(0xffA5A2A2),
                decoration: InputDecoration(
                  hintText: 'Enter Destination',
                  hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                  focusColor: Colors.grey,
                  hoverColor: Colors.grey,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: destinationDateTextController,
                        cursorColor: Color(0xffA5A2A2),
                        decoration: InputDecoration(
                          hintText: 'Enter Date',
                          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                          focusColor: Colors.grey,
                          hoverColor: Colors.grey,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1,child: Container()),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: destinationTimeTextController,
                        cursorColor: Color(0xffA5A2A2),
                        decoration: InputDecoration(
                          hintText: 'Enter Time',
                          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),
                          focusColor: Colors.grey,
                          hoverColor: Colors.grey,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Text('$dropdownValue'),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.white,
                      ),
                      child: DropdownButton(
                        hint: Text('Trip Type',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        isExpanded: true,
                        value: dropdownValue,
                        elevation: 0,
                        icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff778298),),
                        underline: SizedBox(height: 1,),
                        items: <String>['Business', 'Education', 'Health', 'Vacation'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color(0xffA5A2A2)),),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),

              Divider(height: 1,thickness: 1.2,color: Colors.grey,),

              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  print('Hello Trippas');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: Color(0xff3E64FF),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [BoxShadow(blurRadius: 0,offset: Offset.zero,spreadRadius: 2,color: Color(0xffCACCD3))]
                  ),
                  child: Center(
                    child: Text(
                      'Add Trip',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
