#!/usr/bin/env python3
"""
    a function that returns the list of schools with the same topic
"""
from pymongo import MongoClient


def schools_by_topic(mongo_collection, topic):
    """
        the function
    """
    results = mongo_collection.find(
        {"topics": topic}
    )
    return ([doc for doc in results])
