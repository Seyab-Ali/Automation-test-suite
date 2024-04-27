name: WordPress Dark Mode Test Suite

on:
  push:
    branches:
      - main

jobs:
  test:
    name: Run Tests
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2
      
      - name: Set up Python
        uses: actions/setup-python@v2
        with:
          python-version: 3.8
      
      - name: Install Dependencies
        run: pip install -r requirements.txt
      
      - name: Run Test Suite
        run: python test_suite.py
