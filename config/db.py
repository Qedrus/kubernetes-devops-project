from sqlalchemy import create_engine, MetaData
import os

database = os.environ['MYSQL_DATABASE']
user = os.environ['MYSQL_USER']
password = os.environ['MYSQL_ROOT_PASSWORD']
host = os.environ['DB_HOST']

connection_string = f"mysql://{user}:{password}@{host}:3306/{database}"

engine = create_engine(connection_string)

meta = MetaData()

conn = engine.connect()
