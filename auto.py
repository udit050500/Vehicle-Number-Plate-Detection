import os
import easyocr
import mysql.connector
import smtplib, ssl
from datetime import date
from datetime import timedelta

from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

def remove(string):
    return "".join(string.split())


IMAGE_PATH = '/Users/uditbhargava/h2.jpeg'
reader = easyocr.Reader(['en'])
result = reader.readtext(IMAGE_PATH,paragraph="False")[0][1]
re=result.upper()
res=remove(re)
# res="CH01 AN0001"

def mail(r0,r1,r2,r3,r4,r5,r6):
    message=MIMEMultipart()
    reciever="{}".format(r6)
    subject="RTO challan for violation of traffic rules"
    body="Your challan amount is Rs. 5000"
    clink="You can pay your challan using the link: https://bit.ly/3PvT4bR"
    numplate=f"Number Plate is {r0}"
    name="Name of the owner: {} {}".format(r1,r2)
    age="Age of the owner: {}".format(r3)
    add="Address: {}".format(r4)
    mob="Mobile NO: {}".format(r5)
    loc="Location: JLN Marg, Jaipur"
    x1=(date.today()+timedelta(days=3))
    due="Due Date: {}".format(x1)
    t1="Thank you \nRTO office \nFor any queries related to challan, call RTO office: 1010101010"
    message=f"Subject:{subject} \n\n{body}\n{numplate}\n{name}\n{age}\n{add}\n{mob}\n{loc}\n{due}\n\n{clink}\n{t1}"
    
    s = smtplib.SMTP('smtp.gmail.com', 587)    #default mail submission port                 
    s.starttls() #puts the connection to the SMTP server
    s.login("rtogmaiil@gmail.com","Rto@123456")
    s.sendmail("rtogmaiil@gmail.com", reciever, message)
    print("Challan Sent")
    s.quit()

class ub:
    def __init__(self):
        self.con=mysql.connector.connect(host="localhost",user="root",password="",database="numberplate")
    def fetchone(self,res):
        query="select * from p_details where numplate = '{}';".format(res)
        # print(query)
        cur=self.con.cursor()
        cur.execute(query)
        for row in cur:
            if (row[0] == res):
                print("Number Plate:",row[0])
                print("Name:",row[1])
                print("Surname:",row[2])
                print("Age:",row[3])
                print("Address:",row[4])
                print("Mobile NO:",row[5])
                print("Email id:",row[6])

                mail(row[0],row[1],row[2],row[3],row[4],row[5],row[6])
                
                break
        else:
            print("Number Plate '{}' is not avilable".format(res))

out=ub()
out.fetchone(res)

    