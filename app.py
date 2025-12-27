from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, DevSecOps!"

if __name__ == '__main__':
    # host='0.0.0.0' කියන්නේ ඕනම කෙනෙක්ට එන්න දොර අරින්න කියන එකයි
    app.run(debug=True, host='0.0.0.0', port=5000)
