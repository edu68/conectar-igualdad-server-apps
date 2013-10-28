#!/usr/bin/python
# -*- coding: utf-8 -*-
import ConfigParser


cfgFile = 'src/config.cfg'
config = ConfigParser.SafeConfigParser()
resultLst = config.read(cfgFile)


