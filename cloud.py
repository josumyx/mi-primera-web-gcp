from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1>¡Hola Mundo!</h1><p>Desplegado en Cloud Run desde GitHub</p>"

if __name__ == "__main__":
    # Cloud Run define un puerto en la variable de entorno PORT
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))

     