import mysql.connector
from web3 import Web3
from dotenv import load_dotenv
import os
import json

load_dotenv()

ABI = os.getenv("ABI")
CONTRACT_ADDRESS = os.getenv("CONTRACT_ADDRESS")
PASSWORD = os.getenv("PASSWORD")


w3 = Web3(Web3.HTTPProvider("https://rpc-mumbai.maticvigil.com/"))

with open(ABI, "r") as f:
    abi = json.load(f)
    
contract = w3.eth.contract(address=CONTRACT_ADDRESS, abi=abi)

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password=PASSWORD,
    database="employees"
)

abi = ABI
contract_address = CONTRACT_ADDRESS

cursor = conn.cursor()

query = "SELECT id, name, entryDate, roles, roleStartDates, resignedDate FROM employees"
cursor.execute(query)

for row in cursor:
    id, name, entryDate, roles, roleStartDates, resignedDate = row
    
    roles = json.loads(roles)
    roleStartDates = json.loads(roleStartDates)

    tx_hash = contract.functions.addEmployee(
        id,
        name,
        entryDate,
        roles,
        roleStartDates,
        resignedDate
    ).transact()

    receipt = w3.eth.waitForTransactionReceipt(tx_hash)
    
    print(f"Data uploaded to blockchain for employee {id}")
    
cursor.close()
conn.close()