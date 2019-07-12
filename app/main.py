from flask import Flask
from app.blueprints.default import blueprint as default_blueprint

app = Flask(__name__)
app.register_blueprint(default_blueprint, url_prefix='/')
