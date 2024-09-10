# hello.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "healthy"}), 200

@app.route('/')
def hello():
    return "Hello, Anaconda! Welcome to my Platform Demo"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
