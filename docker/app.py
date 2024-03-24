import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World! A message from raja'

if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 7000.
    port = int(os.environ.get('PORT', 7000))
    app.run(host='0.0.0.0', port=port)
