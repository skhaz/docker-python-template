from http import HTTPStatus
from flask import Blueprint

blueprint = Blueprint('default', __name__)


@blueprint.route('/')
def index():
  return '', HTTPStatus.NO_CONTENT
