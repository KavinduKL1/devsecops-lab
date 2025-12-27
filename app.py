from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, DevSecOps!"

# IF කෑලි ඕන නෑ, කෙලින්ම Run කරන්න කියමු.
# එතකොට Indentation වරදින්න විදියක් නෑ.
app.run(debug=True, host='0.0.0.0', port=5000) # nosec
