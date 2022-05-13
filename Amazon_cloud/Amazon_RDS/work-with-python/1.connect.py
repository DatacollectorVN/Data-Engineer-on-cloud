import pymysql
from config import config

INI_FILE_PATH = '1.database_mysql_aws_rds.ini'
SECTION = 'MySQL-AWS-RDS'

def connect():
    """ Connect to the PostgreSQL database server """
    conn = None
    try:
        # read connection parameters
        params = config(INI_FILE_PATH, SECTION)

        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = pymysql.connect(**params)
		
        # create a cursor
        cur = conn.cursor()
        
	# execute a statement
        print('PostgreSQL database version:')
        cur.execute('SELECT version()')

        # display the PostgreSQL database server version
        db_version = cur.fetchone()
        print(db_version)
       
	# close the communication with the PostgreSQL
        cur.close()
    except (Exception, pymysql.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            print('Database connection closed.')


if __name__ == '__main__':
    connect()