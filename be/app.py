from flask import Flask, jsonify
import os
import psycopg2

app = Flask(__name__)

@app.route("/api")
def hello():
    try:
        conn = psycopg2.connect(
            dbname=os.getenv("DB_NAME"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASS"),
            host=os.getenv("DB_HOST"),
            port=os.getenv("DB_PORT")
        )
        conn.close()
        return jsonify(message="Connected to PostgreSQL successfully!")
    except Exception as e:
        return jsonify(error=str(e))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
