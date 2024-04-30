#!/usr/bin/env python3
"""
    a function that prints all collections in a db
    and return an empty list if none is available
"""
from pymongo import MongoClient as client


def list_all(mongo_collection):
    """
        the function
    """
    return ([doc for doc in mongo_collection.find()])
