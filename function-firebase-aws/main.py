import firebase_admin
from firebase_admin import firestore
import requests
import json

app = firebase_admin.initialize_app()
db = firestore.client()

ref = '/users/fmAojRnxwRR2xGLzsiVzfcXL17P2' # USUARIO DEV
CPF = '939.316.884-93' # CPF DEV

def request_aws(cpf):
    request = requests.get('https://oywapvha4lozwqxg62bic6cora0nrjwb.lambda-url.us-east-1.on.aws', params={'cpf': cpf})
    text = request.text
    dicio = json.loads(text)
    for record in dicio:
        # ref = record['user_firebase']
        record['user'] = db.collection(ref.split('/')[1]).document(ref.split('/')[2])
        del record['user_firebase']
    return dicio

def import_firestore(records):
    transactions = db.collection(u'transactions')
    for record in records:
        print(record)
        transactions.add(record)

def hello_world(request):
    print('start')
    
    dicio = request_aws(CPF)
    import_firestore(dicio)
    
    request_json = request.get_json()
    if request.args and 'message' in request.args:
        return request.args.get('message')
    elif request_json and 'message' in request_json:
        return request_json['message']
    else:
        return f'Hello World!'
