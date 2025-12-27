from flask import Flask
import sys

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, DevSecOps!"

if __name__ == '__main__':
    # Console එකට Print එකක් දාමු App එක පටන් ගත්තා කියලා
    print("Starting Flask Server...", file=sys.stderr)
    # Debug අයින් කරලා, කෙලින්ම Run කරමු
    app.run(host='0.0.0.0', port=5000, debug=False)
