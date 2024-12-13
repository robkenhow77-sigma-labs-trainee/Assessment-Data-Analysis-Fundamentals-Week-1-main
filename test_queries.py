"""Tests for the SQL challenges."""

# pylint: skip-file

from io import StringIO

import pytest
import pandas as pd


@pytest.mark.parametrize("challenge_num", range(1, 11))
def test_correct_columns_challenge_(challenge_num, run_sql_file):

    out = run_sql_file(f"./queries/challenge_{challenge_num}.sql")
    out = pd.read_csv(StringIO(out))
    expected = pd.read_csv(f"./example-results/challenge_{challenge_num}.csv")
    
    assert out.columns.to_list() == expected.columns.to_list(), "Columns not correct or in incorrect order"


@pytest.mark.parametrize("challenge_num", range(1, 11))
def test_correct_number_of_rows_challenge_(challenge_num, run_sql_file):

    out = run_sql_file(f"./queries/challenge_{challenge_num}.sql")
    out = pd.read_csv(StringIO(out))
    expected = pd.read_csv(f"./example-results/challenge_{challenge_num}.csv")
    
    assert out.shape[0] == expected.shape[0], "Incorrect number of rows"


@pytest.mark.parametrize("challenge_num", range(1, 11))
def test_correct_data_challenge_(challenge_num, run_sql_file):

    out = run_sql_file(f"./queries/challenge_{challenge_num}.sql")
    out = pd.read_csv(StringIO(out))
    expected = pd.read_csv(f"./example-results/challenge_{challenge_num}.csv")
    
    assert out.equals(expected), "Query output does not match expected result"