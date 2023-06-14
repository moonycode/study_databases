INSERT INTO Gender(Gender,Gender_ID) VALUES ('남','G-01');
INSERT INTO Gender(Gender,Gender_ID) VALUES ('여','G-02');

INSERT INTO Results(Result,Result_ID) VALUES ('정상','R-01');
INSERT INTO Results(Result,Result_ID) VALUES ('비정상','R-02');

INSERT INTO Items(Item,Item_ID) VALUES ('폐암','I-01');
INSERT INTO Items(Item,Item_ID) VALUES ('갑상선 질환','I-02');
INSERT INTO Items(Item,Item_ID) VALUES ('간암','I-03');
INSERT INTO Items(Item,Item_ID) VALUES ('뇌졸증','I-04');
INSERT INTO Items(Item,Item_ID) VALUES ('심장질환','I-05');
INSERT INTO Items(Item,Item_ID) VALUES ('알츠하이머병','I-06');

INSERT INTO Opinions(Opinion,Opinion_ID) VALUES ('식습관 개선','O-01');
INSERT INTO Opinions(Opinion,Opinion_ID) VALUES ('운동 계획','O-02');

INSERT INTO Patients(Name,Age,Height,Weight,Blood_Pressure,Glucose,Gender_ID,Result_ID,Patient_ID) VALUES ('홍길동',30,175,75,'120/80',90,'G-01','R-02','P-01');
INSERT INTO Patients(Name,Age,Height,Weight,Blood_Pressure,Glucose,Gender_ID,Result_ID,Patient_ID) VALUES ('김영희',25,160,55,'110/70',85,'G-02','R-02','P-02');
INSERT INTO Patients(Name,Age,Height,Weight,Blood_Pressure,Glucose,Gender_ID,Result_ID,Patient_ID) VALUES ('박철수',45,180,85,'130/85',100,'G-01','R-01','P-03');
INSERT INTO Patients(Name,Age,Height,Weight,Blood_Pressure,Glucose,Gender_ID,Result_ID,Patient_ID) VALUES ('이지은',35,165,60,'115/75',95,'G-02','R-02','P-04');
INSERT INTO Patients(Name,Age,Height,Weight,Blood_Pressure,Glucose,Gender_ID,Result_ID,Patient_ID) VALUES ('최민호',28,170,70,'125/80',92,'G-01','R-01','P-05');

INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-01','P-01');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-02','P-01');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-03','P-02');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-04','P-02');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-05','P-03');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-03','P-04');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-06','P-04');
INSERT INTO Items_Pats(Item_ID,Patient_ID) VALUES ('I-03','P-05');

INSERT INTO Opinions_Pats(Opinion_ID,Patient_ID) VALUES ('O-01','P-03');
INSERT INTO Opinions_Pats(Opinion_ID,Patient_ID) VALUES ('O-02','P-03');
