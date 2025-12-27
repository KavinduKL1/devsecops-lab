from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello DevSecOps"

# මේ කොටස හරියටම කෙලින් තියෙන්න ඕන (මුලටම)
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000) # nosec
