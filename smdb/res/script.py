import sqlite3 as sql
import pandas as pd
import tkinter

from tkinter import filedialog

path = filedialog.askopenfilename()

con = sql.connect('auto.db')
wb = pd.read_excel(path, sheet_name='Лист1')

wb.to_sql(name='Clients', con=con, if_exists='replace', index=True)

con.commit()
con.close()
