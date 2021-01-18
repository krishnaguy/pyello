from flask import Flask, jsonify

def create_app(test_config=None):
    meta = Flask(__name__, instance_relative_config=True)
    meta.config.from_mapping(
        SECRET_KEY='dev'
    )

    @meta.route('/hello')
    def hello():
        return "Hello there!"

    return meta

