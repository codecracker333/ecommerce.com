from robot.api import logger
from robot.api.interfaces import ListenerV3


class listener1(ListenerV3):

    def start_test(self, data, result):
        logger.console("\nTest Started\n")

    def end_test(self, data, result):
        logger.console("Test Ended")
    
    
    #C:\Project_demo\TestAutomation\listeners\listenere1.py
    
    
    