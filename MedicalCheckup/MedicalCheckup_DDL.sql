
CREATE TABLE Gender
(
  Gender    VARCHAR(50) NOT NULL COMMENT '성별',
  Gender_ID VARCHAR(50) NOT NULL COMMENT 'Gender PK',
  PRIMARY KEY (Gender_ID)
);

CREATE TABLE Items
(
  Item    VARCHAR(50) NOT NULL COMMENT '재검진 항목',
  Item_ID VARCHAR(50) NOT NULL COMMENT 'Item PK',
  PRIMARY KEY (Item_ID)
);

CREATE TABLE Items_Pats
(
  Item_ID    VARCHAR(50) NOT NULL COMMENT 'Item FK',
  Patient_ID VARCHAR(50) NOT NULL COMMENT '피검사자 ID(FK)'
);

CREATE TABLE Opinions
(
  Opinion    VARCHAR(500) NOT NULL COMMENT '유지 방안',
  Opinion_ID VARCHAR(50)  NOT NULL COMMENT 'Opinions PK',
  PRIMARY KEY (Opinion_ID)
);

CREATE TABLE Opinions_Pats
(
  Opinion_ID VARCHAR(50) NOT NULL COMMENT 'Opinions FK',
  Patient_ID VARCHAR(50) NOT NULL COMMENT '피검사자 ID(FK)'
);

CREATE TABLE Patients
(
  Name           VARCHAR(50) NOT NULL COMMENT '이름',
  Age            INTEGER     NOT NULL COMMENT '나이',
  Height         INTEGER     NOT NULL COMMENT '키(cm)',
  Weight         INTEGER     NOT NULL COMMENT '체중(kg)',
  Blood_Pressure VARCHAR(50) NOT NULL COMMENT '혈압(mmHg)',
  Glucose        INTEGER     NOT NULL COMMENT '혈당(mg/dL)',
  Patient_ID     VARCHAR(50) NOT NULL COMMENT '피검사자 ID(PK)',
  Gender_ID      VARCHAR(50) NOT NULL COMMENT 'Gender FK',
  Result_ID      VARCHAR(50) NOT NULL COMMENT 'Result FK',
  PRIMARY KEY (Patient_ID)
) COMMENT '피검사자 정보';

CREATE TABLE Results
(
  Result    VARCHAR(50) NOT NULL COMMENT '검진 결과',
  Result_ID VARCHAR(50) NOT NULL COMMENT 'Result PK',
  PRIMARY KEY (Result_ID)
);

ALTER TABLE Patients
  ADD CONSTRAINT FK_Gender_TO_Patients
    FOREIGN KEY (Gender_ID)
    REFERENCES Gender (Gender_ID);

ALTER TABLE Patients
  ADD CONSTRAINT FK_Results_TO_Patients
    FOREIGN KEY (Result_ID)
    REFERENCES Results (Result_ID);

ALTER TABLE Items_Pats
  ADD CONSTRAINT FK_Items_TO_Items_Pats
    FOREIGN KEY (Item_ID)
    REFERENCES Items (Item_ID);

ALTER TABLE Items_Pats
  ADD CONSTRAINT FK_Patients_TO_Items_Pats
    FOREIGN KEY (Patient_ID)
    REFERENCES Patients (Patient_ID);

ALTER TABLE Opinions_Pats
  ADD CONSTRAINT FK_Opinions_TO_Opinions_Pats
    FOREIGN KEY (Opinion_ID)
    REFERENCES Opinions (Opinion_ID);

ALTER TABLE Opinions_Pats
  ADD CONSTRAINT FK_Patients_TO_Opinions_Pats
    FOREIGN KEY (Patient_ID)
    REFERENCES Patients (Patient_ID);
