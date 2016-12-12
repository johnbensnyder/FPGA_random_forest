# -*- coding: utf-8 -*-
"""
Created on Mon Dec 12 14:20:30 2016

@author: jbsnyder
"""

import os

os.chdir(r'\\ad\eng\users\j\b\jbsnyder\My Documents\EC551\module_for_demo')

import pandas as pd

zorn = pd.read_csv('zorn.csv')

zorn_y = zorn['bkvlps']

zorn_X = zorn[['csho','at','ceql','dlc','ni']]

from sklearn.ensemble import RandomForestRegressor

clf = RandomForestRegressor(n_estimators = 10, max_depth = 4)

clf.fit(zorn_X,zorn_y)

clf.predict(zorn_X.head(50))

import skhdl_64

skhdl_64.gen_verilog(clf,'zorn.v')

skhdl_64.predict(zorn_X.head(10))