import os
from django.apps import AppConfig
import beeline

class AppConfig(AppConfig):
    name = 'connections'
    def ready(self):
        beeline.init(
            writekey=os.environ['HONEYCOMB_API_KEY'],
            dataset=os.environ['HONEYCOMB_DATASET'],
            service_name='web-app',
            debug=True,
        )
