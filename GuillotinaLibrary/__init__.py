# -*- coding: utf-8 -*-
from robot.api import logger

import os
import signal
import subprocess

__version__ = '1.0'
ROBOT_LIBRARY_DOC_FORMAT = 'reST'


class GuillotinaLibrary:
    """Minimal example for a Robot Framework Library.
    """

    # TEST CASE => New instance is created for every test case.
    # TEST SUITE => New instance is created for every test suite.
    # GLOBAL => Only one instance is created during the whole test execution.
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self):
        """GuillotinaLibrary can be imported with optional arguments.
        """
        pass

    def start_guillotina(self):
        logger.console("Start Guillotina")
