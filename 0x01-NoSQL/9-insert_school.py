#!/usr/bin/env python3
"""
    a function that inserts a new doc in a collection based on kwargs
"""
from pymongo import MongoClient


def insert_school(mongo_collection, **kwargs):
    """
        the function
    """
    result = mongo_collection.insert_one(kwargs)
    return (result.inserted_id)
