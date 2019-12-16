from flask import Flask
app = Flask(__name__)

@app.route('/service')
def foo_bar():
  return "Hello from Fargate!!!"

@app.route('/__healthcheck__')
def healthcheck():
  return "Healthy: true"


if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0')
