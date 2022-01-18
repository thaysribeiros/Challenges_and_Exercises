# This code sample uses the 'requests' library:
# http://docs.python-requests.org
import requests
from dateutil import parser
# step 1: Go to https://trello.com/app-key, get your key - you need to be logged in Trello and replace the code below with your key value. 
key='yourkey'
# step 2: Go to step 1 inside there should be a a hyperlink called 'Token' once you click on it and accepting it should provide a token,  
# and replace the code below with your key value. 
token='yourtoken'

def createBoard(name):
    url = "https://api.trello.com/1/boards/"
    query = {
        'name': name,
        'key': key,
        'token': token
    }

    response = requests.request(
        "POST",
        url,
        params=query
    )
    return response.json()

def createListInBoard(name, boardID):
    url = "https://api.trello.com/1/lists"

    query = {
        'name': name,
        'idBoard': boardID,
        'key': key,
        'token': token
    }

    response = requests.request(
        "POST",
        url,
        params=query
    )
    return response.json()

def createTask(taskName, listID, desc, due_date_str):
    url = "https://api.trello.com/1/cards"

    headers = {
        "Accept": "application/json"
    }
    dueDate = parser.parse(due_date_str)

    query = {
        'idList': listID,
        'name': taskName,
        'desc': desc,
        'due': dueDate,
        'dueComplete': True,
        'key': key,
        'token': token
    }

    response = requests.request(
        "POST",
        url,
        headers=headers,
        params=query
    )
    return response.json()


def updateDueDate(cardID, date_string):
    url = "https://api.trello.com/1/cards/" + cardID
    dueDate = parser.parse(date_string)

    headers = {
    "Accept": "application/json"
    }
    query = {
        'due': dueDate,
        'key': key,
        'token': token
    }
    response = requests.request(
        "PUT",
        url,
        headers=headers,
        params=query
    )
    return response.json()


def updateCardCompletion(cardID, dueComplete):
    url = "https://api.trello.com/1/cards/" + cardID

    headers = {
    "Accept": "application/json"
    }

    #convert boolean to 1 or 0
    if dueComplete:
        dueComplete = 1
    else:
        dueComplete = 0

    query = {
        'dueComplete': dueComplete,
        'key': key,
        'token': token
    }
    response = requests.request(
        "PUT",
        url,
        headers=headers,
        params=query
    )
    return response.json()

 #Uncomment and comment what you want to do in sequence
# board = createBoard("TName of the Board")
# print("boardID "+ board['id'])
# lst = createListInBoard('Todo', board['id'])
# print("listID: " + lst['id'])
# task = createTask('JobSearch', lst['id'], 'looking for jobs', '01/24/2022 21:00:20')
#print("cardId: " + task['id'])
#updateDueDate(task['id'], '01/24/2022 21:00:20')
#updateCardCompletion("61e087ba500c9b2a35df549a", True)

# task = updateCardCompletion(task['id'], False)
# task = updateDueDate(task['id'], '01/15/2022 21:00:20')
# print("Due:" + task['due'])



# # The date gets inserted with a wrong time
# dt_str = '01/24/2022 21:00:20'
# dueDate = parser.parse(dt_str)
