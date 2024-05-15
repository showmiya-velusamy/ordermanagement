import pyodbc # type: ignore

class DBConnUtil:
    @staticmethod
    def getDBConn():
        try:
            connection = pyodbc.connect('Driver={SQL Server};'
                                        'Server=DESKTOP-QFPQL5Q\MSSQLSERVER01;'
                                        'Database=ordermanagement;'
                                        'Trusted_Connection=yes;')
            return connection
        except Exception as e:
            print("Error connecting to database:", e)
            return None