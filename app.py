from flask import *
import pymysql
app = Flask (__name__)

@app.route("/api/signup" , methods=["POST"])
def signup():
    username= request.form['username']
    email=request.form['email']
    phone=request.form['phone']
    password=request.form['password']

    print(username,email,phone,password)
    # create connnection to dbase
    connection = pymysql.connect(host="localhost",user="root", password="", database="leyonce_sokogarden")
    # create cursor to handle sql queries
    cursor =connection.cursor()
    # create sql query
    sql = "insert into users (username,email,phone,password) values(%s, %s ,%s ,%s)"
    print(sql)
    # data to be saved
    data=(username,email,phone,password)
    print(data)
    # execute the sql query
    cursor.execute(sql,data)

    # save data
    connection.commit()
    # return the response
    return jsonify({"message":"Sign up  succcessful"})

@app.route("/api/signin",methods = ["POST"])
def signin ():
  email = request.form['email']
  password = request.form['password']
  print(email,password)
  connection=pymysql.connect(host="localhost",user="root",password="",database="leyonce_sokogarden")
  cursor=connection.cursor(pymysql.cursors.DictCursor)
#   create query
  sql="select user_id,username,email,phone from users where email=%s and password=%s"
  data=(email,password)
  cursor.execute(sql,data)
  if cursor.rowcount==0:
   return jsonify({"message":"invalid credentials"})
  else:
    #  get user data
    user=cursor.fetchone()
    connection.commit()
    return jsonify({"message":"Login successful","user":user})


if __name__ == "__main__": 
    app.run(debug=True)