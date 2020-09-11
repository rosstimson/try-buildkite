import hug


@hug.get()
def hello():
    '''Says hello'''
    return 'Hello world!'

app = __hug_wsgi__
